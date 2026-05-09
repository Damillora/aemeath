kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/x11-libs/xcb.bst
- components/x11-libs/xcb-util.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcb-wm.git
  track: xcb-util-wm-*
  ref: xcb-util-wm-0.4.2-0-g0c6681e465c9cc7b1fbb60778ba1eaa61ab01a14
- kind: git_module
  path: m4
  url: freedesktop:xorg/util/xcb-util-m4.git
  ref: c617eee22ae5c285e79e81ec39ce96862fd3262f
