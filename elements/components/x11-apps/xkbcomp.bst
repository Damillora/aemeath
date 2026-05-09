kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-tools/util-macros.bst
- components/sys-devel/flex.bst
- components/sys-devel/bison.bst

depends:
- components/x11-libs/x11.bst
- components/x11-libs/xkbfile.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/app/xkbcomp.git
  track: xkbcomp-*
  ref: xkbcomp-1.5.0-0-g2c7789785981ad1fce3858c726615b49293f7de0
