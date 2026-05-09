kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/libgudev.bst
- components/hw-libs/libusb.bst
- components/desktop-libs/polkit-gobject.bst
- components/hw-libs/libimobiledevice.bst

sources:
- kind: git_repo
  url: freedesktop:upower/upower.git
  track: 'v*'
  ref: v1.91.2-0-g17f9e8dc5a967fde13be688634a465c71fb79dd0
