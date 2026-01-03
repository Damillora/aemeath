kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- freedesktop-sdk.bst:components/polkit.bst

variables:
  cmake-local: |
    -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: 'kde:libraries/polkit-qt-1.git'
  track: 'v*'
  ref: aa1c6c414ec021fd32e30492c00bb13347e228db
