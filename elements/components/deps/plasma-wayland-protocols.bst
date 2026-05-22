kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qtbase.bst

sources:
- kind: git_repo
  url: 'kde:libraries/plasma-wayland-protocols.git'
  track: 'v*'
  ref: v1.21.0-0-g4c015e90ae6c88f2ffa766e899387ef431eade49
