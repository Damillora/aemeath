kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/perl.bst
- components/dev-lang/vala.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/glib.bst
- components/util-libs/icu.bst
- components/util-libs/libxml2.bst

variables:
  cmake-local: >-
    -D LIBICAL_STATIC=NO
    -D LIBICAL_BUILD_DOCS=false
    -D LIBICAL_GLIB_VAPI=true
    -D LIBICAL_JAVA_BINDINGS=OFF
    -D LIBICAL_GOBJECT_INTROSPECTION=true

sources:
- kind: git_repo
  url: github:libical/libical.git
  track: 'v*'
  exclude:
  - "*rc*"
  ref: v4.0.3-0-g9b8163c78dfb43e8b700e6c7e531f0df64c208bf
