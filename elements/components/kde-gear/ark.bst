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
  ref: b81c4055486c99f4f21ff228bf12485bc73e8e6b0064edee1043a11ad5d1e555
