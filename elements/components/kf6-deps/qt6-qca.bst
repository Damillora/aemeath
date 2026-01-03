kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst
- freedesktop-sdk.bst:components/nss.bst

variables:
  cmake-local: |
    -DBUILD_TESTS=OFF \
    -DBUILD_WITH_QT6=ON

sources:
- kind: git_repo
  url: 'kde:libraries/qca.git'
  track: 'v*'
  ref: df5171e3c4baf346581f15af5a040e61b166a332
