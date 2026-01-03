kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/kf6/kdoctools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kpackage.git'
  track: 'v%{kf6-version}'
  ref: 06248bf4b7aeb1a5740b2c8bf040bfc6e4bc60f2
