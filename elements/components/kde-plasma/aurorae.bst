kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/ksvg.bst
- components/kde-plasma/kdecoration.bst

runtime-depends:
- components/kde-kf6/kirigami.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/plasma/%{plasma-track}/aurorae-%{plasma-track}.tar.xz'
  ref: a7953e8c65ca653a01025f76aa06cec13c40999665f79251f006f6f01248ecec
