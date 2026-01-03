kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kguiaddons.git'
  track: 'v%{kf6-version}'
  ref: e1421c5bde412724e3074b4b42b93332a0208f2c
