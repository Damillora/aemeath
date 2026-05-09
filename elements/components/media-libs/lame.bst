kind: autotools

(@):
- elements/sources/lame.yml

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/media-libs/libsndfile.bst

variables:
  conf-local: --disable-static