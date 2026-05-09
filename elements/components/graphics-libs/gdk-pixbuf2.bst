kind: meson

(@):
- elements/sources/gdk-pixbuf.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/util-libs/glib.bst
- components/desktop-tools/shared-mime-info.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libtiff.bst

variables:
  meson-local: >
    -Dbuiltin_loaders=png,jpeg
    -Dinstalled_tests=false
    -Dtests=false
    -Ddocumentation=false
    -Dman=false
    -Dglycin=disabled
    -Dandroid=disabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/gdk-pixbuf-csource'
        - '%{bindir}/gdk-pixbuf-pixdata'
        - '%{bindir}/gdk-pixbuf-thumbnailer'

    integration-commands:
    - |
      gdk-pixbuf-query-loaders --update-cache
