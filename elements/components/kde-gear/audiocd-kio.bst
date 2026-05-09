kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/media-libs/libogg.bst
- components/media-libs/libvorbis.bst
- components/media-libs/lame.bst
- components/media-libs/flac.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/solid.bst
- components/kde-gear/libkcddb.bst
- components/hw-tools/cdparanoia.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/audiocd-kio-%{gear-track}.tar.xz'
  ref: 53a6084d7c4aaf125e372c0ca5be0947483bcbd75c352b97fbd24cede36dc2d6
