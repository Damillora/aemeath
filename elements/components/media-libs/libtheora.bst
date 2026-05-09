kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/media-libs/libogg.bst
- components/graphics-libs/libpng.bst

variables:
  conf-local: --disable-static

sources:
- kind: git_repo
  url: github:xiph/theora.git
  track: v*
  ref: v1.2.0beta1-0-g69cf61ef163666f53a48374d3e8df7225913194d
