kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libdbus.bst
- components/deps/c-stdaux.bst
- components/deps/c-utf8.bst

sources:
- kind: git_repo
  url: github:c-util/c-dvar.git
  track: 'v*'
  ref: v1.2.0-0-g82984409941e577d0b699779c1cd5b701fa7ec65
