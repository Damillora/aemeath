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
  ref: v2.2.7-rc1-0-g0a17181a3e71d833c45ce2e21bc701022c578f17
