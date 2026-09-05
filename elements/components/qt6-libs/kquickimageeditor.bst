kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qtshadertools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kirigami.bst
- components/util-libs/highway.bst

sources:
- kind: git_repo
  url: kde:libraries/kquickimageeditor.git
  track: v*
  ref: v0.7.0.1-0-gac7568044defc89c494b0d6edb60073cb0ad8b25
