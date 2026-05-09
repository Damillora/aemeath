kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kpackage.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g43e0bb3bc48005af0180db0a9c80fa5278453c35
