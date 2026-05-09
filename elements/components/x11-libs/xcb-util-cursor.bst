kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/gperf.bst
- components/x11-libs/xtrans.bst

depends:
- components/x11-libs/xcb.bst
- components/x11-libs/xcb-util.bst
- components/x11-libs/xcb-util-image.bst
- components/x11-libs/xcb-util-renderutil.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcb-cursor.git
  track: xcb-util-cursor-*
  ref: xcb-util-cursor-0.1.6-0-g7b0fa99aa13084a9bf7be4180066f6a74b0adef1
- kind: git_module
  path: m4
  url: freedesktop:xorg/util/xcb-util-m4.git
  ref: c617eee22ae5c285e79e81ec39ce96862fd3262f
