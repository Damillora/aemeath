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
  ref: ba8a6f27311ca14f8d1e1c2135fa925e1075c43c6463ea2f641b1af3de670430
