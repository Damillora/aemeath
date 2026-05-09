kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/net-libs/libproxy.bst
- components/util-libs/libtirpc.bst
- components/x11-libs/xcursor.bst
#- components/deps/samba.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtsvg.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kdnssd.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/syntax-highlighting.bst
- components/kde-gear/libkexiv2.bst
#- components/hw-libs/libmtp.bst
- components/util-libs/libplist.bst
- components/hw-libs/libimobiledevice.bst
- components/qt6-libs/qcoro.bst
- components/qt6-libs/kdsoap.bst
- components/qt6-libs/kdsoap-ws-discovery-client.bst
- components/kde-plasma/plasma-activities.bst
- components/kde-plasma/plasma-activities-stats.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kio-extras-%{gear-track}.tar.xz'
  ref: af4941af624f883891d33701aa0ce4216d6de114db3e4a250099c52d3d42acaa
