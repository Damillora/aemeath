kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/util-libs/libical.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kcalendarcore.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gd534891328ed24267cc983feb646c86d8c9938f4
