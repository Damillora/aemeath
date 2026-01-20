kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst

sources:
- kind: git_repo
  url: yoctoproject:libfakekey.git
  track: 0.*
  ref: 0.3-0-g7ad885912efb2131e80914e964d5e635b0d07b40
