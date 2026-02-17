kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/c-list.bst
- components/deps/c-rbtree.bst
- components/deps/c-stdaux.bst
- components/deps/c-utf8.bst

sources:
- kind: git_repo
  url: github:c-util/c-ini.git
  track: 'v*'
  ref: v1.1.0-0-gd08d5edeaee9127e72bc1c1f20aca3a63bb880fb