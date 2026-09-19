kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/util-libs/libxml2.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/sys-services/dbus-broker.bst
- components/desktop-data/gsettings-desktop-schemas.bst
- components/util-libs/glib.bst
- components/x11-libs/x11.bst
- components/x11-libs/xi.bst
- components/x11-libs/xtst.bst

variables:
  meson-local: >-
    -D default_bus=dbus-broker


public:
  bst:
    integration-commands:
    - PKGSYSTEM_ENABLE_FSYNC=0 update-mime-database "%{datadir}/mime"

sources:
- kind: git_repo
  url: gnome:at-spi2-core.git
  track: '*.*'
  ref: 2.62.0.1-0-gb33ff15213c4c09dfc0a5b261875c65c7cffd91d
