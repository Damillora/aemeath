kind: autotools

build-depends:
- components/buildsystem/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/boot-util/gnu-efi.bst
#- components/help2man.bst

depends:
- components/sys-libs/openssl.bst
- components/util-sys/util-linux.bst

variables:
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
  url: git_https:git.ozlabs.org/ccan
  ref: b1f28e17227f2320d07fe052a8a48942fe17caa5
