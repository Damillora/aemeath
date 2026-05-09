kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/x11-tools/util-macros.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/proto/xcbproto.git
  track: xcb-proto-*
  ref: xcb-proto-1.17.0-0-g77d7fc04da729ddc5ed4aacf30253726fac24dca
