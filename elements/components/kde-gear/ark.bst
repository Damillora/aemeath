kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/util-libs/libarchive.bst
- components/sys-libs/zlib-ng.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/breeze-icons.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kfilemetadata.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/kpty.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/util-archive/libzip.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/ark-%{gear-track}.tar.xz'
  ref: 8018fec69668aac35e5ab7ce4e51ce04de6ab7f56a3996322b016f41c31d5a01
