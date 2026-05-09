kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/x11-libs/xcb.bst
- components/x11-libs/xcb-util.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcb-image.git
  track: xcb-util-image-*
  ref: xcb-util-image-0.4.1-gitlab-0-g1abfc17b1e08e46dbdf34b4ef36097a8c307a8ec
- kind: git_module
  path: m4
  url: freedesktop:xorg/util/xcb-util-m4.git
  ref: c617eee22ae5c285e79e81ec39ce96862fd3262f
