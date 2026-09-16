kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/jansson.bst
- components/graphics-libs/libdrm.bst
- components/sys-libs/libdbus.bst
- components/hw-libs/libusb.bst
- components/sys-libs/systemd-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xrandr.bst

sources:
- kind: git_repo
  url: github:rockowitz/ddcutil.git
  track: v*
  ref: v3.0.1-0-gbbe30d7f7add0ea1ce29feb2af6ae1160ad20d01
