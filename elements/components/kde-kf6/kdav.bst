kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kdav.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gb05a4b8630b12e09744b0e208d5d8c68e19ccfec
