# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

MY_P="${PN}-${PV//./-}"

DESCRIPTION="Small embeddable Javascript engine"
HOMEPAGE="https://bellard.org/quickjs/"
SRC_URI="https://bellard.org/quickjs/${MY_P}.tar.xz"
S="${WORKDIR}/${MY_P}"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${PN}-2020.11.08_Remove-TTY-check-in-test.patch" )

src_prepare() {
	sed -i \
		-e 's;prefix=/usr/local;prefix=/usr;' \
		-e '/$(STRIP) .*/d' \
		Makefile || die "Failed setting prefix"

	sed -Ei '/^\s*(CC|AR)=/d' Makefile \
		|| die "Failed to remove hard-coded tools."

	sed -Ei 's/(^\s*(C|LD)FLAGS)=/\1\+=/' Makefile \
		|| die "Failed to change build flag assignment into addition."

	export CC="$(tc-getCC)"
	export AR="$(tc-getAR)"

	default
}