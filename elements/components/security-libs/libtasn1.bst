kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  # When using --disable-static, some useless rpaths appear
  conf-link-args: >-
    --enable-shared

sources:
- kind: tar
  url: gnu:libtasn1/libtasn1-%{source-track_libtasn1}.tar.gz
  ref: 1d8a444a223cc5464240777346e125de51d8e6abf0b8bac742ac84609167dc87
