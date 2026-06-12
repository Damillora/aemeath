kind: autotools

(@):
- elements/sources/xz.yml

build-depends:
- components/buildsystems/autotools.bst
- components/util-archive/gzip.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
     --disable-static
  autogen: ./autogen.sh --no-po4a --no-doxygen
