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
- kind: tar
  url: savannah_download:libpipeline/libpipeline-%{source-track_libpipeline}.tar.gz
  ref: 1b1203ca152ccd63983c3f2112f7fe6fa5afd453218ede5153d1b31e11bb8405
