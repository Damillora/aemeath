kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/x11-libs/xcb.bst
- components/x11-libs/xcb-util.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcb-keysyms.git
  track: xcb-util-keysyms-*
  ref: xcb-util-keysyms-0.4.1-0-g85e093f14b0ade2956e0a5d1c37cfde06d8b1ba6
- kind: git_module
  path: m4
  url: freedesktop:xorg/util/xcb-util-m4.git
  ref: c617eee22ae5c285e79e81ec39ce96862fd3262f
