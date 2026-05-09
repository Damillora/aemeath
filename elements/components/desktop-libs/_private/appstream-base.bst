kind: meson

(@):
- elements/sources/appstream.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/docbook-xsl-ns.bst
- components/dev-tools/gperf.bst
- components/dev-tools/itstool.bst
- components/dev-tools/xmlto.bst
- components/qt6-toolkit/qttools.bst
- components/util-shells/bash-completion.bst

depends:
- components/net-libs/curl.bst
- components/sys-libs/systemd-libs.bst
- components/graphics-libs/librsvg.bst
- components/security-libs/libblake3.bst
- components/util-libs/glib.bst
- components/util-libs/libfyaml.bst
- components/util-libs/libxml2.bst
- components/util-libs/libxmlb.bst
- components/qt6-toolkit/qtbase.bst

variables:
  meson-local: >-
    -Dqt=true
    -Dstemming=false
    -Dcompose=true
    -Ddocs=false
    -Dapidocs=false

public:
  bst:
    split-rules:
      appstream-qt:
        - '%{libdir}/libAppStreamQt.so*'
        - '%{includedir}/AppStreamQt/**'
        - '%{libdir}/cmake/AppStreamQt/**'
