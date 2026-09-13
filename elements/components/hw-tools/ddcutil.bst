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
  ref: v3.0.0-0-gd369554742231baf5ecb4ea3c98f293f273305a0
