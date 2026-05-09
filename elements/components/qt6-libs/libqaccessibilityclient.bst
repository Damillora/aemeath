kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: kde:libraries/libqaccessibilityclient.git
  track: v*
  ref: v0.6.0-0-g2e21b72f1541ba718ca162d82e33a39b4246d7d3
