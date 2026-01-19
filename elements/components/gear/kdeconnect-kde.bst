kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- components/qt6/qtbase.bst
- components/qt6/qtconnectivity.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtmultimedia.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knotifications.bst
- components/kf6/kpackage.bst
- components/kf6/kpeople.bst
- components/kf6/kservice.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kwindowsystem.bst
- components/kf6/modemmanager-qt.bst
- components/kf6/qqc2-desktop-style.bst
- components/kf6/solid.bst
- components/deps/kirigami-addons.bst
- components/deps/libfakekey.bst
- components/deps/pulseaudio-qt.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/kdeconnect-kde-%{gear-version}.tar.xz'
  ref: 7d63857b7e1c27a00dbdbab26fa384fc7d93bfe32d82b95943a944d477be5ad7
