kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qtbase.bst

depends:
- aemeath/platform.bst

sources:
- kind: git_repo
  url: 'kde:libraries/plasma-wayland-protocols.git'
  track: 'v*'
  ref: 3b201c79e8172a3060d4b31a6d69ce37bb9cde71
