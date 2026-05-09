kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/graphics-libs/libpng.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/giflib.bst

variables:
  conf-local: |
    --disable-wic \
    --enable-jpeg \
    --enable-png \
    --enable-gif \
    --enable-tiff \
    --enable-libwebpmux \
    --enable-libwebpdemux \
    --enable-libwebpdecoder \
    --enable-threading \
    --enable-swap-16bit-csp \
    --disable-static

sources:
- kind: git_repo
  url: chromium:webm/libwebp.git
  track: v*
  exclude:
  - '*-rc*'
  ref: v1.6.0-0-g4fa21912338357f89e4fd51cf2368325b59e9bd9