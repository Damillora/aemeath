kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/util-libs/c-list.bst
- components/util-libs/c-rbtree.bst
- components/util-libs/c-stdaux.bst
- components/util-libs/c-utf8.bst

sources:
- kind: git_repo
  url: github:c-util/c-ini.git
  track: 'v*'
  ref: v1.1.0-0-gd08d5edeaee9127e72bc1c1f20aca3a63bb880fb