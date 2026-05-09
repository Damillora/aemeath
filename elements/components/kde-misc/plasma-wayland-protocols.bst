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
  ref: v1.21.0-0-g4c015e90ae6c88f2ffa766e899387ef431eade49
