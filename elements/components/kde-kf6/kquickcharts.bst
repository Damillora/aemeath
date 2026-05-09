kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtshadertools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kquickcharts.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g377a8ebbca1a0947d7855a752c4222afa8a5c2fd
