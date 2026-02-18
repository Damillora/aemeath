kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/c-stdaux.bst

sources:
- kind: git_repo
  url: github:c-util/c-shquote.git
  track: 'v*'
  ref: v1.1.0-0-gc4d0c851126c43eb52a1d7b0063429a79f7579d3