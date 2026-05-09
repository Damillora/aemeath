kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/util-libs/glib.bst
- components/desktop-services/polkit.bst
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: kde:libraries/polkit-qt-1.git
  track: v*
  ref: v0.201.1-0-g328a4c8615c7207e1297b776026657a77c6a71b6
