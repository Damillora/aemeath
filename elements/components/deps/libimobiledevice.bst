kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- components/deps/libusbmuxd.bst
- components/deps/libtatsu.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice.git
  track: "*.*"
  ref: 1.4.0-0-g149f7623c672c1fa73122c7119a12bfc0012f2ac
