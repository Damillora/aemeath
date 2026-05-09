kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kparts.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g3a94b1a0c0ffbef833b0b70a1535fc9e42594116
