kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/util-libs/c-stdaux.bst

sources:
- kind: git_repo
  url: github:c-util/c-rbtree.git
  track: 'v*'
  ref: v3.2.0-0-g034f74456617e445a0379d345a362397f02ba1ad