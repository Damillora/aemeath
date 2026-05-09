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
  ref: 1.18.4-0-g4541e0cd3a751b85e52e2a83d02ac6145a5efa85
