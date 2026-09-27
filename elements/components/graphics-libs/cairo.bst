kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/graphics-libs/libpng.bst
- components/graphics-libs/pixman.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/fontconfig.bst
- components/util-libs/glib.bst
- components/util-archive/lzo.bst
- components/x11-libs/x11.bst
- components/x11-libs/xext.bst

variables:
  meson-local: >-
    -Dspectre=disabled
    -Dsymbol-lookup=disabled
    -Dtests=disabled
    -Dlzo=enabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/cairo-sphinx'
        - '%{bindir}/cairo-trace'
        - '%{libdir}/libcairo-script-interpreter.so'
        - '%{libdir}/libcairo-gobject.so'
        - '%{libdir}/libcairo.so'
        - '%{libdir}/cairo/libcairo-trace.so'

sources:
- kind: git_repo
  url: freedesktop:cairo/cairo.git
  track: 1.*[02468].*
  ref: 1.18.6-0-g018b3424a10ecd37450360f21454ecf0f3007e17
