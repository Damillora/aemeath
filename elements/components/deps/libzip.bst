kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/bzip2.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/gnutls.bst

sources:
- kind: git_repo
  url: github:nih-at/libzip.git
  track: "v*"
  ref: v1.11.4-0-g6f8a0cdd24a0dc6cce9dac4a7679da784ab124ea
