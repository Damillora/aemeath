kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/sys-libs/libdbus.bst
- components/input-libs/libei.bst
- components/input-libs/libfakekey.bst
- components/x11-libs/xkbcommon.bst
- components/x11-libs/x11.bst
- components/x11-libs/xtst.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtconnectivity.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kpeople.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/modemmanager-qt.bst
- components/kde-kf6/qqc2-desktop-style.bst
- components/kde-kf6/solid.bst
- components/kde-misc/kirigami-addons.bst
- components/qt6-libs/pulseaudio-qt.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kdeconnect-kde-%{gear-track}.tar.xz'
  ref: 45a197a2f2e7e400e6cf42f351cf92ca06807f1023f17378f128a3314c7fc176
