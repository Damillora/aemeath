kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/xau.bst
- components/x11-libs/xdmcp.bst
- components/x11-tools/xcb-proto.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcb.git
  track: libxcb-*
  ref: libxcb-1.17.0-0-g622152ee42a310876f10602601206954b8d0613e
