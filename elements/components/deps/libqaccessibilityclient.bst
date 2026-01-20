kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: kde:libraries/libqaccessibilityclient.git
  track: v*
  ref: v0.6.0-0-g2e21b72f1541ba718ca162d82e33a39b4246d7d3
