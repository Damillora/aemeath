kind: meson

sources:
- kind: git_repo
  url: github:ximion/appstream.git
  track: v*
  ref: d6ce0a8dbdf31a33762009a0e1f364e938470af2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap/sed.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/python3-gi-docgen.bst
- freedesktop-sdk.bst:components/xmlto.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/glib-networking.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:components/librsvg.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxmlb.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- components/qt6/qtbase.bst

variables:
  meson-local: >-
    -Dstemming=false
    -Dcompose=true
    -Ddocs=false
    -Dapidocs=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libappstream-compose.so'
        - '%{libdir}/libappstream.so'
        - '%{libdir}/libAppStreamQt.so'
        - '%{bindir}'
        - '%{bindir}/**'
