kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kcodecs.bst
- components/kf6/kconfig.bst
- components/kf6/kwidgetsaddons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kcompletion.git'
  track: 'v%{kf6-version}'
  ref: f254acfd1ed7e9ccfcf6c7db06395df239c5d7b1
