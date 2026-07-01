kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/graphics-libs/opencv.bst

sources:
- kind: git_repo
  url: kde:libraries/kquickimageeditor.git
  track: v*
  ref: v0.6.2.1-0-g9490a7227be3054f59c24e95a265b4356762716a
