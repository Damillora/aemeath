kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kcolorscheme.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g27066d471c93629efee8459d9f69490caa92b7c4
