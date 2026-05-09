kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/python3.bst

depends:
- components/net-libs/glib-networking.bst
- components/util-libs/libxml2.bst
- components/net-libs/libnghttp2.bst
- components/sys-libs/sqlite.bst
- components/net-libs/libpsl.bst
- components/util-archive/brotli.bst

variables:
  meson-local: >
    -Dgssapi=disabled
    -Dvapi=disabled
    -Dntlm=disabled
    -Dsysprof=disabled
    -Dautobahn=disabled
    -Dpkcs11_tests=disabled

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libsoup-3.0.so'
        - '%{libdir}/libsoup-gnome-3.0.so'

sources:
- kind: git_repo
  url: gnome:libsoup.git
  track: 3.[02468].*
  ref: 3.6.6-0-g25eac153004f777581ca2d95e31a02ca96844332
