kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/ktexttemplate.git'
  track: 'v%{kf6-version}'
  ref: 6462d7d021705e590927575ae8d49f67c4bb6bf8
