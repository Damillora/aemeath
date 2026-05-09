kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/x11-tools/util-macros.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/proto/xorgproto.git
  track: xorgproto-*
  ref: xorgproto-2025.1-0-gc18d2bc22813793bba7f0e4e603c0104d7724802
