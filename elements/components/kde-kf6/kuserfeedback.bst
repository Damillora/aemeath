kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtcharts.bst
- components/qt6-toolkit/qtsvg.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kuserfeedback.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gd48a00d4d6ca68cc89b392cee95cda0b56f905aa
