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
  ref: v6.28.0-0-g01dc9a0c05dd4851b01b93e961c9aa33b1e96056
