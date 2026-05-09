kind: autotools

(@):
- elements/sources/libtasn1.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  # When using --disable-static, some useless rpaths appear
  conf-link-args: >-
    --enable-shared
