kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/x11-libs/xtst.bst

sources:
- kind: git_repo
  url: yoctoproject:libfakekey.git
  track: 0.*
  ref: 0.3-0-g7ad885912efb2131e80914e964d5e635b0d07b40
