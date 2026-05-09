kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/util-sys/which.bst


depends:
- components/net-libs/curl.bst
- components/util-libs/libplist.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl

sources:
- kind: git_repo
  url: github:libimobiledevice/libtatsu.git
  track: "*.*"
  ref: 1.0.5-0-g42329cb756682535c7c0f087987b78d1dd5b16c8
