kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/harfbuzz.bst
- components/graphics-libs/fribidi.bst
- components/graphics-libs/cairo.bst
- components/x11-libs/xft.bst
- components/util-libs/glib.bst

variables:
  meson-local: >-
    -Ddocumentation=false
    -Dintrospection=enabled
    -Dbuild-testsuite=false
    -Dbuild-examples=false

sources:
- kind: git_repo
  url: gnome:pango.git
  track: "*.*.*"
  ref: 1.57.1-0-g8f68873915b281ef5afcf0daa101d08047e305ba
