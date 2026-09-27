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
  ref: v3.0.2-0-g5085ae9bb1a8e5bd8db717d80dd80a279a0f05fb
