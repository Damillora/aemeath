kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kholidays.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gabbd4e62fa382421536119d938c3ee47f62f3b4f
