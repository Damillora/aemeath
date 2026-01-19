kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/curl.bst
- components/deps/libplist.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl

sources:
- kind: git_repo
  url: github:libimobiledevice/libtatsu.git
  track: "*.*"
  ref: 1.0.5-0-g42329cb756682535c7c0f087987b78d1dd5b16c8
