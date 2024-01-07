# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.1
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi-to-tui@3.1.0
	anstream@0.6.4
	anstyle@1.0.4
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anyhow@1.0.75
	async-channel@1.9.0
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.4
	bincode@1.3.3
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.4.0
	block-buffer@0.10.4
	bstr@1.6.2
	bumpalo@3.14.0
	bytemuck@1.14.0
	byteorder@1.5.0
	bytes@1.5.0
	cassowary@0.3.0
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.31
	clap@4.4.6
	clap_builder@4.4.6
	clap_complete@4.4.3
	clap_complete_fig@4.4.1
	clap_complete_nushell@4.4.1
	clap_derive@4.4.2
	clap_lex@0.5.1
	clipboard-win@4.5.0
	color_quant@1.1.0
	colorchoice@1.0.0
	concurrent-queue@2.3.0
	core-foundation-sys@0.8.4
	crc32fast@1.3.2
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	crypto-common@0.1.6
	deranged@0.3.8
	digest@0.10.7
	dirs@5.0.1
	dirs-sys@0.4.1
	either@1.9.0
	equivalent@1.0.1
	erased-serde@0.3.31
	error-code@2.3.1
	event-listener@2.5.3
	exr@1.71.0
	fdeflate@0.3.0
	filetime@0.2.22
	flate2@1.0.27
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.0
	fsevent-sys@4.1.0
	futures@0.3.28
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	generic-array@0.14.7
	getrandom@0.2.10
	gif@0.12.0
	gimli@0.28.0
	glob@0.3.1
	half@2.2.1
	hashbrown@0.12.3
	hashbrown@0.14.1
	heck@0.4.1
	hermit-abi@0.3.3
	iana-time-zone@0.1.57
	iana-time-zone-haiku@0.1.2
	idna@0.4.0
	if_chain@1.0.2
	image@0.24.7
	indexmap@1.9.3
	indexmap@2.0.2
	indoc@2.0.4
	inotify@0.9.6
	inotify-sys@0.1.5
	itertools@0.11.0
	itoa@1.0.9
	jpeg-decoder@0.3.0
	js-sys@0.3.64
	kqueue@1.0.8
	kqueue-sys@1.0.4
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.149
	line-wrap@0.1.1
	linked-hash-map@0.5.6
	lock_api@0.4.10
	log@0.4.20
	lua-src@546.0.1
	luajit-src@210.4.8+resty107baaf
	malloc_buf@0.0.6
	md-5@0.10.6
	memchr@2.6.4
	memoffset@0.9.0
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.8
	mlua@0.9.1
	mlua-sys@0.3.2
	nom@7.1.3
	notify@6.1.1
	nu-ansi-term@0.46.0
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.17
	num_cpus@1.16.0
	objc@0.2.7
	object@0.32.1
	once_cell@1.18.0
	onig@6.4.0
	onig_sys@69.8.1
	option-ext@0.2.0
	ordered-float@2.10.0
	overload@0.1.1
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	paste@1.0.14
	percent-encoding@2.3.0
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkg-config@0.3.27
	plist@1.5.0
	png@0.17.10
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.69
	qoi@0.4.1
	quick-xml@0.29.0
	quote@1.0.33
	ratatui@0.23.0
	rayon@1.8.0
	rayon-core@1.12.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex@1.9.6
	regex-automata@0.3.9
	regex-syntax@0.7.5
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustversion@1.0.14
	ryu@1.0.15
	safemem@0.3.3
	same-file@1.0.6
	scopeguard@1.2.0
	serde@1.0.188
	serde-value@0.7.0
	serde_derive@1.0.188
	serde_json@1.0.107
	serde_spanned@0.6.3
	sharded-slab@0.1.7
	shell-words@1.1.0
	signal-hook@0.3.17
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.1
	signal-hook-tokio@0.3.1
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.11.1
	socket2@0.5.4
	spin@0.9.8
	str-buf@1.0.6
	strsim@0.10.0
	strum@0.25.0
	strum_macros@0.25.2
	syn@1.0.109
	syn@2.0.38
	syntect@5.1.0
	thiserror@1.0.49
	thiserror-impl@1.0.49
	thread_local@1.1.7
	tiff@0.9.0
	time@0.3.29
	time-core@0.1.2
	time-macros@0.2.15
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.33.0
	tokio-macros@2.1.0
	tokio-stream@0.1.14
	toml@0.8.2
	toml_datetime@0.6.3
	toml_edit@0.20.2
	tracing@0.1.37
	tracing-appender@0.2.2
	tracing-attributes@0.1.26
	tracing-core@0.1.31
	tracing-log@0.1.3
	tracing-subscriber@0.3.17
	trash@3.1.0
	typenum@1.17.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	url@2.4.1
	utf8parse@0.2.1
	validator@0.16.1
	validator_derive@0.16.0
	validator_types@0.16.0
	valuable@0.1.0
	version_check@0.9.4
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.87
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-shared@0.2.87
	weezl@0.1.7
	which@4.4.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.44.0
	windows@0.48.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	winnow@0.5.16
	yaml-rust@0.4.5
	yazi-prebuild@0.1.0
	zune-inflate@0.2.54
"

inherit cargo

DESCRIPTION="Blazing fast terminal file manager written in Rust, based on async I/O."
HOMEPAGE="https://yazi-rs.github.io/"
SRC_URI="
	https://github.com/sxyazi/yazi/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD Boost-1.0 CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016
	ZLIB
"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_prepare() {
	sed -i 's/strip = true/strip = false/' Cargo.toml || die "Sed failed!"
	eapply_user
}

src_install() {
	dobin target/$(usex debug debug release)/yazi
}