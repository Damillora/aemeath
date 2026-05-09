kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtsvg.bst
- components/kde-kf6/breeze-icons.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kwidgetsaddons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kiconthemes.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g39ccb51497f557f06c561b0701555f37e83f9d4f
