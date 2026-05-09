kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/graphics-libs/giflib.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libwebp.bst
- components/graphics-libs/openjpeg.bst
- components/sys-libs/zlib-ng.bst

sources:
- kind: git_repo
  url: github:DanBloomberg/leptonica.git
  track: '*.*'
  ref: 1.87.0-pre1-0-g2d889876a6700e9591c4a0e60390250372dd8b62
