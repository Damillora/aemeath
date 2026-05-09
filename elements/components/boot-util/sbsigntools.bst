kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/help2man.bst
- components/boot-util/gnu-efi.bst

depends:
- components/sys-libs/openssl.bst
- components/util-sys/util-linux.bst

variables:
  cflags-local: >-
    -Wno-error=unused-but-set-variable
  conf-local: >-
    CRTPATH=%{libdir}
    CPPFLAGS="-DOPENSSL_API_COMPAT=0x10100000L"

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/jejb/sbsigntools.git
  track: v*.*.*
  ref: v0.9.5-0-g9cfca9fe7aa7a8e29b92fe33ce8433e212c9a8ba
- kind: git_module
  path: lib/ccan.git
  url: ozlabs:ccan
  ref: b1f28e17227f2320d07fe052a8a48942fe17caa5
