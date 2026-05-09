kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/rust.bst

depends:
- components/dev-tools/cmake.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'github:corrosion-rs/corrosion.git'
  track: 'v*'
  exclude:
  - '*rc*'
  ref: v0.6.1-0-g1499b14e4906a2890f5cee1547c8848db261753d
