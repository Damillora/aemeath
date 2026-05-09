kind: meson

(@):
- elements/sources/freetype.yml

build-depends:
- components/buildsystems/meson.bst

depends:
- components/util-archive/brotli.bst
- components/graphics-libs/libpng.bst

variables:
  meson-local: >-
    -Dbrotli=enabled
    -Dbzip2=enabled
    -Dharfbuzz=disabled
    -Dpng=enabled
    -Dzlib=enabled
