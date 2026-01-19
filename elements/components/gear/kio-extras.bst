kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libproxy.bst
- freedesktop-sdk.bst:components/libtirpc.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
#- components/deps/samba.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/kf6/karchive.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcmutils.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdnssd.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/solid.bst
- components/kf6/syntax-highlighting.bst
- components/gear/libkexiv2.bst
#- components/gear/libmtp.bst
- components/deps/libplist.bst
- components/deps/libimobiledevice.bst
- components/deps/qt6-qcoro.bst
- components/deps/qt6-kdsoap.bst
- components/deps/qt6-kdsoap-ws-discovery-client.bst
- components/plasma/plasma-activities.bst
- components/plasma/plasma-activities-stats.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/kio-extras-%{gear-version}.tar.xz'
  ref: df464e3cf9ee83d72f5346e37941bed05eea1d0e5f49dfd81c940aeaec369d57
