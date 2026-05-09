kind: meson

(@):
- elements/sources/gstreamer.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/dev-lang/rust.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/libunwind.bst

variables:
  command-subdir: subprojects/gstreamer

