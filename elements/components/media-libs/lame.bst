kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/media-libs/libsndfile.bst

variables:
  conf-local: --disable-static

sources:
- kind: tar
  url: sourceforge:lame/files/lame/%{source-track_lame}/lame-%{source-track_lame}.tar.gz
  ref: ddfe36cab873794038ae2c1210557ad34857a4b6bdc515785d1da9e175b1da1e
