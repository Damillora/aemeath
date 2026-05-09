kind: meson

(@):
- elements/sources/glib.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst
- components/dev-python3/packaging.bst
- components/dev-tools/_private/gobject-introspection-base.bst
- components/util-libs/_private/glib-minimal.bst
- components/util-libs/libxslt.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libffi.bst
- components/util-libs/util-linux-libs.bst

variables:
  meson-local: >-
    -D glib_debug=disabled
    -D man-pages=disabled
    -D sysprof=disabled

public:
  bst:
    integration-commands:
    - |
      glib-compile-schemas %{datadir}/glib-2.0/schemas

    - |
      if [ -d "%{libdir}/gio/modules" ]; then
        gio-querymodules "%{libdir}/gio/modules"
      fi