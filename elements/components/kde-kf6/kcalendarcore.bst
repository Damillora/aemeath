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
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kcalendarcore.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g19e7adfc9ffb9d989295d78710d3b8cc2e51fc67
