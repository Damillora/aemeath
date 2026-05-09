kind: meson

(@):
- elements/sources/freetype.yml

build-depends:
- components/buildsystems/meson.bst
- components/graphics-libs/_private/freetype-minimal.bst

depends:
- components/util-archive/brotli.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/harfbuzz.bst

variables:
  meson-local: >-
    -Dbrotli=enabled
    -Dbzip2=enabled
    -Dharfbuzz=enabled
    -Dpng=enabled
    -Dzlib=enabled

config:
  configure-commands:
    (<):
    - sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg
    - sed -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" -i include/freetype/config/ftoption.h