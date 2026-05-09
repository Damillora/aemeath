kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/util-sys/which.bst


depends:
- components/security-libs/gnutls.bst
- components/security-libs/libgcrypt.bst
- components/hw-libs/libusbmuxd.bst
- components/hw-libs/libtatsu.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice.git
  track: "*.*"
  ref: 1.4.0-0-g149f7623c672c1fa73122c7119a12bfc0012f2ac
