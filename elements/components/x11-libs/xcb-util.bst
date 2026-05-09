kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/x11-libs/xcb.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcb-util.git
  track: xcb-util-*
  ref: xcb-util-0.4.1-gitlab-0-gbffd8df1725c0fae9105a097e75b466e2f49d7bd
- kind: git_module
  path: m4
  url: freedesktop:xorg/util/xcb-util-m4.git
  ref: c617eee22ae5c285e79e81ec39ce96862fd3262f
