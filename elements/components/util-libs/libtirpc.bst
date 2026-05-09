kind: autotools

(@):
- elements/sources/libtirpc.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-gssapi
