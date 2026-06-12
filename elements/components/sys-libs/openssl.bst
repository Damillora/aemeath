kind: autotools

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/perl.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst

variables:
  openssl-target: linux-x86_64
  arch-conf: 'enable-ec_nistp_64_gcc_128'
  make-args: >-
    INSTALL_LIBS= MANSUFFIX=ssl

config:
  configure-commands:
  - |
    ./config --prefix=%{prefix}         \
           --openssldir=%{sysconfdir}/ssl \
           --libdir=%{lib}          \
           shared                \
           zlib-dynamic

public:
  cpe:
    vendor: 'openssl'

sources:
- kind: git_repo
  url: github:openssl/openssl.git
  # Track LTS
  track: refs/tags/openssl-3.5.*
  exclude:
  - openssl*alpha*
  - openssl*beta*
  ref: openssl-3.5.6-0-g286ddeaac037533bbdce65b3c689e3f7ffebf0f6
