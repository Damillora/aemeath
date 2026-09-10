kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kwidgetsaddons.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g759d687197173e4da56f7fab2bebdd9e9f3de0bb
