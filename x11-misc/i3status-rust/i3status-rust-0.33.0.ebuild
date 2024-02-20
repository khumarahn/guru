# Copyright 2020-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.10

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	annotate-snippets@0.9.2
	anstream@0.6.11
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.4
	anyhow@1.0.79
	async-broadcast@0.5.1
	async-channel@2.1.1
	async-io@1.13.0
	async-io@2.3.0
	async-lock@2.8.0
	async-lock@3.3.0
	async-once-cell@0.5.3
	async-pidfd@0.1.4
	async-process@1.8.1
	async-recursion@1.0.5
	async-signal@0.2.5
	async-task@4.7.0
	async-trait@0.1.77
	atomic-waker@1.1.2
	autocfg@1.1.0
	backon@0.4.1
	backtrace@0.3.69
	base64@0.13.1
	base64@0.21.7
	bindgen@0.69.4
	bitflags@1.3.2
	bitflags@2.4.2
	block-buffer@0.10.4
	blocking@1.5.1
	bumpalo@3.14.0
	byteorder@1.5.0
	bytes@1.5.0
	calendrical_calculations@0.1.0
	calibright@0.1.5
	cc@1.0.83
	cexpr@0.6.0
	cfg-expr@0.15.6
	cfg-if@1.0.0
	charset@0.1.3
	chrono-tz-build@0.2.1
	chrono-tz@0.8.5
	chrono@0.4.31
	clang-sys@1.7.0
	clap@4.4.18
	clap_builder@4.4.18
	clap_derive@4.4.7
	clap_lex@0.6.0
	clap_mangen@0.2.17
	colorchoice@1.0.0
	concurrent-queue@2.4.0
	convert_case@0.6.0
	cookie-factory@0.3.2
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core_maths@0.1.0
	cpufeatures@0.2.12
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	darling@0.10.2
	darling_core@0.10.2
	darling_macro@0.10.2
	data-encoding@2.5.0
	debounced@0.1.0
	derivative@2.2.0
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	displaydoc@0.2.4
	either@1.9.0
	encoding_rs@0.8.33
	enumflags2@0.7.8
	enumflags2_derive@0.7.8
	env_filter@0.1.0
	env_logger@0.11.0
	equivalent@1.0.1
	errno@0.3.8
	event-listener-strategy@0.4.0
	event-listener@2.5.3
	event-listener@3.1.0
	event-listener@4.0.3
	fastrand@1.9.0
	fastrand@2.0.1
	filetime@0.2.23
	fixed_decimal@0.5.5
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	from_variants@0.6.0
	from_variants_impl@0.6.0
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@1.13.0
	futures-lite@2.2.0
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-timer@3.0.2
	futures-util@0.3.30
	futures@0.3.30
	generic-array@0.14.7
	gethostname@0.2.3
	getrandom@0.2.12
	gimli@0.28.1
	glob@0.3.1
	h2@0.3.24
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.4
	hex@0.4.3
	http-body@0.4.6
	http@0.2.11
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper-tls@0.5.0
	hyper@0.14.28
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	icu_calendar@1.4.0
	icu_calendar_data@1.4.0
	icu_datetime@1.4.0
	icu_datetime_data@1.4.0
	icu_decimal@1.4.0
	icu_decimal_data@1.4.0
	icu_locid@1.4.0
	icu_locid_transform@1.4.0
	icu_locid_transform_data@1.4.0
	icu_plurals@1.4.0
	icu_plurals_data@1.4.0
	icu_provider@1.4.0
	icu_provider_macros@1.4.0
	icu_timezone@1.4.0
	icu_timezone_data@1.4.0
	ident_case@1.0.1
	idna@0.5.0
	indexmap@2.1.0
	inotify-sys@0.1.5
	inotify@0.10.2
	inotify@0.9.6
	instant@0.1.12
	io-lifetimes@1.0.11
	ipnet@2.9.0
	itertools@0.12.0
	itoa@1.0.10
	js-sys@0.3.67
	kqueue-sys@1.0.4
	kqueue@1.0.8
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.152
	libloading@0.8.1
	libm@0.2.8
	libpulse-binding@2.28.1
	libpulse-sys@1.21.0
	libredox@0.0.1
	libsensors-sys@0.2.0
	libspa-sys@0.8.0
	libspa@0.8.0
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.13
	litemap@0.7.2
	log@0.4.20
	maildir@0.6.4
	mailparse@0.14.1
	memchr@2.7.1
	memoffset@0.7.1
	memoffset@0.9.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.10
	native-tls@0.2.11
	neli-proc-macros@0.1.3
	neli-wifi@0.6.0
	neli@0.6.4
	nix@0.26.4
	nix@0.27.1
	nom@7.1.3
	notify@6.1.1
	notmuch@0.8.0
	num-derive@0.3.3
	num-traits@0.2.17
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.98
	openssl@0.10.62
	option-ext@0.2.0
	ordered-stream@0.2.0
	pandoc@0.8.11
	parking@2.2.0
	parse-zoneinfo@0.3.0
	percent-encoding@2.3.1
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_shared@0.11.2
	pin-project-internal@1.1.3
	pin-project-lite@0.2.13
	pin-project@1.1.3
	pin-utils@0.1.0
	piper@0.2.1
	pipewire-sys@0.8.0
	pipewire@0.8.0
	pkg-config@0.3.29
	polling@2.8.0
	polling@3.3.2
	ppv-lite86@0.2.17
	proc-macro-crate@1.3.1
	proc-macro-crate@3.1.0
	proc-macro2@1.0.76
	pure-rust-locales@0.7.0
	quick-xml@0.31.0
	quote@1.0.35
	quoted_printable@0.5.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.4.3
	regex-syntax@0.8.2
	regex@1.10.2
	reqwest@0.11.23
	roff@0.2.1
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustix@0.37.27
	rustix@0.38.30
	ryu@1.0.16
	same-file@1.0.6
	schannel@0.1.23
	security-framework-sys@2.9.1
	security-framework@2.9.2
	sensors@0.2.2
	serde@1.0.195
	serde_derive@1.0.195
	serde_json@1.0.111
	serde_repr@0.1.18
	serde_spanned@0.6.5
	serde_urlencoded@0.7.1
	sha1@0.10.6
	shellexpand@3.1.0
	shlex@1.3.0
	signal-hook-registry@1.4.1
	signal-hook-tokio@0.3.1
	signal-hook@0.3.17
	siphasher@0.3.11
	slab@0.4.9
	smallvec@1.13.1
	smart-default@0.7.1
	socket2@0.4.10
	socket2@0.5.5
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strsim@0.10.0
	strsim@0.9.3
	swayipc-async@2.0.2
	swayipc-types@1.3.1
	syn@1.0.109
	syn@2.0.48
	synstructure@0.13.0
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	system-deps@6.2.0
	target-lexicon@0.12.13
	tempfile@3.9.0
	thiserror-impl@1.0.56
	thiserror@1.0.56
	tinystr@0.7.5
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.10
	tokio@1.35.1
	toml@0.8.8
	toml_datetime@0.6.5
	toml_edit@0.19.15
	toml_edit@0.21.0
	tower-service@0.3.2
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.5
	typenum@1.17.0
	uds_windows@1.1.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	unicode-xid@0.2.4
	url@2.5.0
	utf8parse@0.2.1
	vcpkg@0.2.15
	version-compare@0.1.1
	version_check@0.9.4
	waker-fn@1.1.1
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.90
	wasm-bindgen-futures@0.4.40
	wasm-bindgen-macro-support@0.2.90
	wasm-bindgen-macro@0.2.90
	wasm-bindgen-shared@0.2.90
	wasm-bindgen@0.2.90
	wayrs-client@1.0.2
	wayrs-proto-parser@1.0.1
	wayrs-protocols@0.13.0
	wayrs-scanner@0.13.0
	web-sys@0.3.67
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.34
	winreg@0.50.0
	writeable@0.5.4
	xdg-home@1.0.0
	yansi-term@0.1.2
	yoke-derive@0.7.3
	yoke@0.7.3
	zbus@3.14.1
	zbus_macros@3.14.1
	zbus_names@2.6.0
	zerofrom-derive@0.1.3
	zerofrom@0.1.3
	zerotrie@0.1.2
	zerovec-derive@0.10.1
	zerovec@0.10.1
	zvariant@3.15.0
	zvariant_derive@3.15.0
	zvariant_utils@1.0.1
"
inherit cargo optfeature

DESCRIPTION="A feature-rich and resource-friendly replacement for i3status, written in Rust."
HOMEPAGE="https://github.com/greshake/i3status-rust/"
SRC_URI="${CARGO_CRATE_URIS}
	https://github.com/greshake/i3status-rust/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz
	https://git.sr.ht/~antecrescent/gentoo-files/blob/main/x11-misc/i3status-rust/${P}-man.1"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD CC0-1.0 GPL-3
	GPL-3+ ISC MIT MPL-2.0 MirOS Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"
IUSE="notmuch pipewire pulseaudio"

DEPEND="dev-libs/openssl:=
	sys-apps/lm-sensors:=
	notmuch? ( net-mail/notmuch:= )
	pulseaudio? ( media-libs/libpulse )
	pipewire? ( >=media-video/pipewire-0.3:= )
"
RDEPEND="${DEPEND}"
BDEPEND="
	virtual/pkgconfig
	>=virtual/rust-1.74.1
	pipewire? ( sys-devel/clang )
"

QA_FLAGS_IGNORED="usr/bin/i3status-rs"

src_configure() {
	local myfeatures=(
		$(usex debug debug_borders "")
		$(usev notmuch)
		$(usev pipewire)
		icu_calendar
		maildir
	)
	cargo_src_configure $(usex pulseaudio '' --no-default-features)
}

src_install() {
	cargo_src_install
	newman "${DISTDIR}"/${P}-man.1 i3status-rs.1
	insinto /usr/share/i3status-rust
	doins -r files/icons files/themes
	dodoc NEWS.md CONTRIBUTING.md
	docinto examples
	dodoc examples/*.toml
}

pkg_postinst() {
	optfeature_header "Configurable fonts for themes and icons:"
	optfeature "themes using the Powerline arrow char" media-fonts/powerline-symbols
	optfeature "the awesome{5,6} icon set" media-fonts/fontawesome
	optfeature_header "Status bar blocks with additional requirements:"
	optfeature "ALSA volume support" media-sound/alsa-utils
	optfeature "advanced/non-standard battery support" sys-power/apcupsd sys-power/upower
	optfeature "bluetooth support" net-wireless/bluez
	optfeature "KDE Connect support" kde-misc/kdeconnect
	optfeature "speedtest support" net-analyzer/speedtest-cli
	# optfeature "VPN support" net-vpn/nordvpn # nordvpn overlay
	elog "The music block supports all music players that implement the MPRIS"
	elog "interface. These include media-sound/rhythmbox, media-sound/mpv and"
	elog "www-client/firefox among others. MPRIS support may be built-in or"
	elog "require additional plugins."
}
