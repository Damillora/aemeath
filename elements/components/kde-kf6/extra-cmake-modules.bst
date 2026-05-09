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
  ref: v6.27.0-0-gfa262097a48f0f84529498741afcc7040e93b271
