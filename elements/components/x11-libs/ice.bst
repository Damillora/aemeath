kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libice.git
  track: libICE-*
  ref: libICE-1.1.2-0-gadf389fc19aedbf1be077b05365d164cd6f463d8
