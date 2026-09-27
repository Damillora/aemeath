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
  ref: v1.23.0-0-gc5ac4db818f4a575a6ccfe0065b73ecfaba6e93e
