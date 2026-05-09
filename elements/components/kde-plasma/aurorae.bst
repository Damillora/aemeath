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
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/plasma/%{plasma-track}/aurorae-%{plasma-track}.tar.xz'
  ref: abef91b84d364114a45f28bc4cb087ccf242650e77373081f2aa2e25d00f11a4
