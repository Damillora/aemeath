kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/media-libs/libsndfile.bst

variables:
  conf-local: --disable-static

sources:
- kind: git_repo
  url: kernel:bluetooth/sbc.git
  track: '*.*'
  ref: 2.2-0-gb3deb8a5dcfb42d8c10ba1f2f1ac9bd7bf7271cc