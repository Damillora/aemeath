kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/expat.bst
- components/util-libs/glib.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/librsvg.bst
- components/graphics-libs/libraw.bst
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libwebp.bst
- components/graphics-libs/openjpeg.bst
- components/graphics-libs/libjxl.bst
- components/graphics-libs/libheif.bst

sources:
- kind: git_repo
  url: github:libvips/libvips.git
  track: v*
  exclude:
  - v*rc*
  ref: v8.18.6-0-g426af3f44246fce9cfa8dd51a353aa4dfd48c553
