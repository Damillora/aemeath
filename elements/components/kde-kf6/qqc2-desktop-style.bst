kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/x11-libs/x11.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/sonnet.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/qqc2-desktop-style.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g4751e3969690c84afb87818412754ad65c0a4e13
