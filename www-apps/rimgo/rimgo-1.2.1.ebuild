# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="An alternative frontend for Imgur. Originally based on rimgu."
HOMEPAGE="https://codeberg.org/rimgo/rimgo"
S="${WORKDIR}/${PN}"
LICENSE="AGPL-3 Apache-2.0 BSD-2 BSD MIT"
SLOT="0"
KEYWORDS="~amd64"
SRC_URI="https://codeberg.org/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

RDEPEND="acct-user/rimgo
	acct-group/rimgo"

EGO_SUM=(
	"github.com/PuerkitoBio/goquery v1.8.1"
	"github.com/PuerkitoBio/goquery v1.8.1/go.mod"
	"github.com/andybalholm/brotli v1.0.5"
	"github.com/andybalholm/brotli v1.0.5/go.mod"
	"github.com/andybalholm/cascadia v1.3.1/go.mod"
	"github.com/andybalholm/cascadia v1.3.2"
	"github.com/andybalholm/cascadia v1.3.2/go.mod"
	"github.com/aymerick/douceur v0.2.0"
	"github.com/aymerick/douceur v0.2.0/go.mod"
	"github.com/aymerick/raymond v2.0.2+incompatible"
	"github.com/aymerick/raymond v2.0.2+incompatible/go.mod"
	"github.com/dustin/go-humanize v1.0.1"
	"github.com/dustin/go-humanize v1.0.1/go.mod"
	"github.com/gofiber/fiber/v2 v2.46.0/go.mod"
	"github.com/gofiber/fiber/v2 v2.48.0"
	"github.com/gofiber/fiber/v2 v2.48.0/go.mod"
	"github.com/gofiber/template v1.8.2"
	"github.com/gofiber/template v1.8.2/go.mod"
	"github.com/gofiber/template/handlebars/v2 v2.1.4"
	"github.com/gofiber/template/handlebars/v2 v2.1.4/go.mod"
	"github.com/gofiber/utils v1.1.0"
	"github.com/gofiber/utils v1.1.0/go.mod"
	"github.com/google/uuid v1.3.0"
	"github.com/google/uuid v1.3.0/go.mod"
	"github.com/gorilla/css v1.0.0"
	"github.com/gorilla/css v1.0.0/go.mod"
	"github.com/joho/godotenv v1.5.1"
	"github.com/joho/godotenv v1.5.1/go.mod"
	"github.com/klauspost/compress v1.16.3/go.mod"
	"github.com/klauspost/compress v1.16.5/go.mod"
	"github.com/klauspost/compress v1.16.7"
	"github.com/klauspost/compress v1.16.7/go.mod"
	"github.com/mattn/go-colorable v0.1.13"
	"github.com/mattn/go-colorable v0.1.13/go.mod"
	"github.com/mattn/go-isatty v0.0.16/go.mod"
	"github.com/mattn/go-isatty v0.0.18/go.mod"
	"github.com/mattn/go-isatty v0.0.19"
	"github.com/mattn/go-isatty v0.0.19/go.mod"
	"github.com/mattn/go-runewidth v0.0.14"
	"github.com/mattn/go-runewidth v0.0.14/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.25"
	"github.com/microcosm-cc/bluemonday v1.0.25/go.mod"
	"github.com/patrickmn/go-cache v2.1.0+incompatible"
	"github.com/patrickmn/go-cache v2.1.0+incompatible/go.mod"
	"github.com/philhofer/fwd v1.1.1/go.mod"
	"github.com/philhofer/fwd v1.1.2"
	"github.com/philhofer/fwd v1.1.2/go.mod"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/rivo/uniseg v0.4.4"
	"github.com/rivo/uniseg v0.4.4/go.mod"
	"github.com/savsgio/dictpool v0.0.0-20221023140959-7bf2e61cea94/go.mod"
	"github.com/savsgio/gotils v0.0.0-20220530130905-52f3993e8d6d/go.mod"
	"github.com/savsgio/gotils v0.0.0-20230208104028-c358bd845dee/go.mod"
	"github.com/tidwall/gjson v1.14.4"
	"github.com/tidwall/gjson v1.14.4/go.mod"
	"github.com/tidwall/match v1.1.1"
	"github.com/tidwall/match v1.1.1/go.mod"
	"github.com/tidwall/pretty v1.2.0/go.mod"
	"github.com/tidwall/pretty v1.2.1"
	"github.com/tidwall/pretty v1.2.1/go.mod"
	"github.com/tinylib/msgp v1.1.6/go.mod"
	"github.com/tinylib/msgp v1.1.8"
	"github.com/tinylib/msgp v1.1.8/go.mod"
	"github.com/valyala/bytebufferpool v1.0.0"
	"github.com/valyala/bytebufferpool v1.0.0/go.mod"
	"github.com/valyala/fasthttp v1.47.0/go.mod"
	"github.com/valyala/fasthttp v1.48.0"
	"github.com/valyala/fasthttp v1.48.0/go.mod"
	"github.com/valyala/tcplisten v1.0.0"
	"github.com/valyala/tcplisten v1.0.0/go.mod"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"github.com/yuin/goldmark v1.4.13/go.mod"
	"gitlab.com/golang-commonmark/linkify v0.0.0-20200225224916-64bca66f6ad3"
	"gitlab.com/golang-commonmark/linkify v0.0.0-20200225224916-64bca66f6ad3/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20210921155107-089bfa567519/go.mod"
	"golang.org/x/crypto v0.7.0/go.mod"
	"golang.org/x/crypto v0.11.0/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4/go.mod"
	"golang.org/x/mod v0.7.0/go.mod"
	"golang.org/x/mod v0.8.0/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20210916014120-12bc252f5db8/go.mod"
	"golang.org/x/net v0.0.0-20220722155237-a158d28d115b/go.mod"
	"golang.org/x/net v0.3.0/go.mod"
	"golang.org/x/net v0.6.0/go.mod"
	"golang.org/x/net v0.7.0/go.mod"
	"golang.org/x/net v0.8.0/go.mod"
	"golang.org/x/net v0.9.0/go.mod"
	"golang.org/x/net v0.10.0/go.mod"
	"golang.org/x/net v0.12.0"
	"golang.org/x/net v0.12.0/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
	"golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4/go.mod"
	"golang.org/x/sync v0.1.0/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210423082822-04245dca01da/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a/go.mod"
	"golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f/go.mod"
	"golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
	"golang.org/x/sys v0.3.0/go.mod"
	"golang.org/x/sys v0.5.0/go.mod"
	"golang.org/x/sys v0.6.0/go.mod"
	"golang.org/x/sys v0.7.0/go.mod"
	"golang.org/x/sys v0.8.0/go.mod"
	"golang.org/x/sys v0.10.0"
	"golang.org/x/sys v0.10.0/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/term v0.3.0/go.mod"
	"golang.org/x/term v0.5.0/go.mod"
	"golang.org/x/term v0.6.0/go.mod"
	"golang.org/x/term v0.7.0/go.mod"
	"golang.org/x/term v0.8.0/go.mod"
	"golang.org/x/term v0.10.0/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/text v0.5.0/go.mod"
	"golang.org/x/text v0.7.0/go.mod"
	"golang.org/x/text v0.8.0/go.mod"
	"golang.org/x/text v0.9.0/go.mod"
	"golang.org/x/text v0.11.0"
	"golang.org/x/text v0.11.0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20201022035929-9cf592e881e9/go.mod"
	"golang.org/x/tools v0.1.12/go.mod"
	"golang.org/x/tools v0.4.0/go.mod"
	"golang.org/x/tools v0.6.0/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	)
go-module_set_globals

SRC_URI+=" ${EGO_SUM_SRC_URI}"

src_prepare() {
	default

	# Embedding the following file in the ebuild allows bypassing NPX and TailwindCSS dependencies.
	# File generated through the following command that must be run for every new version of rimgo :
	# npx tailwindcss -i static/tailwind.css -o static/app.css -m
	cp "${FILESDIR}/app.css" "static/app.css"
	if [[ ! -f "static/app.css" ]]; then
		die
	fi
}

src_compile() {
	ego build
}

src_install() {
	einstalldocs
	dobin rimgo
	newinitd "${FILESDIR}"/rimgo.initd rimgo
	newconfd ".env.example" rimgo
}
