kind: manual

(@):
- elements/sources/rust.yml

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
- components/dev-lang/_private/rust-bin.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/net-libs/curl.bst
- components/util-libs/libxml2.bst
- components/dev-tools/llvm.bst
- components/sys-libs/openssl.bst

variables:
  optimize-debug: "false"
  rust_debug_flags: ""
  debuginfo-level-std: '1'
  rust-target: 'x86_64-unknown-linux-gnu'
  build-docs: 'false'
  llvm-targets: 'X86'

environment-nocache:
- MAXJOBS

environment:
  MAXJOBS: '%{max-jobs}'

config:
  configure-commands:
  - |
    cat <<EOF >config.toml
    [llvm]
    download-ci-llvm = false
    link-shared = true
    targets = "%{llvm-targets}"
    # disable experimental targets, we certainly don't want them (only AVR at the moment)
    experimental-targets = ""
    [build]
    description = "Aemeath OS Rust"
    docs = false
    submodules = false
    python = "/usr/bin/python3"
    locked-deps = true
    vendor = true
    verbose = 2
    extended = true
    tools = ["cargo", "rustdoc", "rustfmt", "analysis"]
    [install]
    prefix = "%{prefix}"
    sysconfdir = "%{sysconfdir}"
    bindir = "%{bindir}"
    libdir = "%{libdir}"
    datadir = "%{datadir}"
    mandir = "%{mandir}"
    docdir = "%{datadir}/doc/rust"
    [rust]
    optimize = true
    channel = "stable"
    backtrace = true
    rpath = false
    lto = "off"
    use-lld = true
    lld = false
    default-linker = "/usr/bin/clang"
    [target.%{rust-target}]
    llvm-config = "/usr/bin/llvm-config"
    EOF

  build-commands:
  - |
    export LIBSSH2_SYS_USE_PKG_CONFIG=1
    export LIBSQLITE3_SYS_USE_PKG_CONFIG=1
    python3 x.py build -j${MAXJOBS}

  install-commands:
  - |
    DESTDIR="%{install-root}" python3 x.py -j1 install
