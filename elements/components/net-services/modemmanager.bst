kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst
- components/sys-services/systemd.bst

depends:
- components/net-libs/libmbim.bst
- components/net-libs/libqmi.bst
- components/util-libs/glib.bst
- components/sys-libs/libdbus.bst
- components/util-libs/libgudev.bst
- components/desktop-services/polkit.bst

variables:
  conf-local: >-
    -Dudevdir=/usr/lib/udev

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/ModemManager.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: 1.24.2-0-gf2b9ab1ad78d322f32134a444b5b54c6e8160e19