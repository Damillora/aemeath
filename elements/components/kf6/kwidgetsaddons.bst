kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kwidgetsaddons.git'
  track: 'v%{kf6-version}'
  ref: b9bdd85c3d57b387a71110ef3924a027a6617688
