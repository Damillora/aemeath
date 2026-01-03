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
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kglobalaccel.git'
  track: 'v%{kf6-version}'
  ref: 6ddecb1a21e8848d616b6cca134679504623d4d3
