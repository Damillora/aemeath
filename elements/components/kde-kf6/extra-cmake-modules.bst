kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/dev-tools/cmake.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/extra-cmake-modules.git'
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.29.0-0-g42f0170593df4920068946494c6978ca7005217b
