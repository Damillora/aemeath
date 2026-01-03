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
    -DWITH_ICON_GENERATION=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/breeze-icons.git'
  track: 'v%{kf6-version}'
  ref: eb34fcfcde9fabcf4be00f4c91d2cfddb36d6f73
