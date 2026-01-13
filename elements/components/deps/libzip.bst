kind: cmake

sources:
- kind: tar
  url: https://libzip.org/download/libzip-1.11.4.tar.xz
  ref: 8a247f57d1e3e6f6d11413b12a6f28a9d388de110adc0ec608d893180ed7097b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/bzip2.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/gnutls.bst
