kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: kde:libraries/polkit-qt-1.git
  track: v*
  ref: v0.201.1-0-g328a4c8615c7207e1297b776026657a77c6a71b6
