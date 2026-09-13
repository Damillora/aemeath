kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: git_repo
  url: 'kde:libraries/plasma-wayland-protocols.git'
  track: 'v*'
  ref: v1.22.0-0-g382dfabda886d3f2f5c067b22e5a22376685ba78
