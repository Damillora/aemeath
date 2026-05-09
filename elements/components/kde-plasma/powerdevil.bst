kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/x11-libs/xcb.bst
- components/sys-libs/systemd-libs.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/krunner.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/solid.bst
- components/kde-plasma/libkscreen.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma-activities.bst
- components/kde-plasma/plasma-workspace.bst
- components/qt6-libs/qcoro.bst
- components/desktop-services/power-profiles-daemon.bst
- components/hw-tools/ddcutil.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/powerdevil-%{plasma-track}.tar.xz'
  ref: fa82624127f95267f69467610a57c3cba562fa0673052b2ff7f9db7f053d9e5a
