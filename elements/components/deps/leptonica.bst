kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/giflib.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/openjpeg.bst

sources:
- kind: git_repo
  url: github:DanBloomberg/leptonica.git
  track: '*.*'
  ref: 1.87.0-pre1-0-g2d889876a6700e9591c4a0e60390250372dd8b62
