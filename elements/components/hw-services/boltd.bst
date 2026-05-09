kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/desktop-libs/polkit-gobject.bst
- components/util-libs/libgudev.bst

depends:
- components/util-libs/glib.bst
- components/sys-services/systemd.bst
- components/desktop-services/polkit.bst

sources:
- kind: git_repo
  url: freedesktop:bolt/bolt.git
  track: '*.*'
  ref: 0.9.11-0-g9d1d66380353dab94c28466f34adb2ba6c7e4393
