kind: meson

(@):
- elements/sources/flatpak.yml

build-depends:
- components/buildsystems/meson.bst
- components/sys-devel/bison.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/gobject-introspection.bst
- components/util-libs/libxslt.bst
- components/dev-python3/pyparsing.bst
- components/wayland-libs/wayland-protocols.bst
- components/dev-tools/xmlto.bst

depends:
- components/desktop-tools/bubblewrap.bst
- components/security-libs/gpgme.bst
- components/util-libs/libarchive.bst
- components/util-libs/libxml2.bst
- components/net-libs/curl.bst
- components/x11-libs/xau.bst
- components/desktop-tools/ostree.bst
- components/filesystem-libs/fuse3.bst
- components/util-libs/json-glib.bst
- components/desktop-libs/appstream.bst
- components/sys-libs/libseccomp.bst
- components/desktop-services/polkit.bst
- components/sys-libs/systemd-libs.bst
- components/desktop-services/xdg-dbus-proxy.bst

variables:
  meson-local: >-
    -Dgtkdoc=disabled
    -Dsystem_bubblewrap=bwrap
    -Ddconf=disabled
    -Dmalcontent=disabled
    -Dselinux_module=disabled
    -Dtests=false
    -Dsystem_dbus_proxy=xdg-dbus-proxy
