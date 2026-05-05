kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/cmake.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'github:corrosion-rs/corrosion.git'
  track: 'v*'
  exclude:
  - '*rc*'
  ref: v0.6.1-0-g1499b14e4906a2890f5cee1547c8848db261753d
