kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-static

sources:
- kind: gnu
  name: libunistring
  ref:
    suffix: libunistring/libunistring-1.4.2.tar.xz
    sha256sum: 5b46e74377ed7409c5b75e7a96f95377b095623b689d8522620927964a41499c
