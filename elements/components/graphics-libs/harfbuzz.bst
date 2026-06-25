kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/graphics-libs/_private/freetype-minimal.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/glib.bst
- components/util-libs/icu.bst

variables:
  # Harfbuzz does not seem to like the exception switch
  cflags-exceptions: ''

sources:
- kind: git_repo
  url: github:harfbuzz/harfbuzz.git
  track: "*.*"
  ref: 14.2.1-0-g56feae4035bdd48f62ba2b8d8c16232d4d89b3a4
