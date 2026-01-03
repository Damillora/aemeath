kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6-deps/plasma-wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kwindowsystem.git'
  track: 'v%{kf6-version}'
  ref: bdce163d61413bcdd48ecc654196cc04678035d4
