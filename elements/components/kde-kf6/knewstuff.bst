kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/attica.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/syndication.bst

runtime-depends:
- components/kde-kf6/kirigami.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/knewstuff.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g377cdf6de03ab9e9c4775b4e6f3126bb4ffb8464
