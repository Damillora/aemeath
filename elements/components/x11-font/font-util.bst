kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-tools/util-macros.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/font/util.git
  track: font-util-*
  ref: font-util-1.4.2-0-g5c92c11482e017fa7210a71b6f44e40042816209
