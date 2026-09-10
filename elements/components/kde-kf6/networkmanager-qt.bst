kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/net-services/networkmanager.bst
- components/util-libs/glib.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/networkmanager-qt.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-gb8d0df51a613e39b6658272afc83506961a45aa0
