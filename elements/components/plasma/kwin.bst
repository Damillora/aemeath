kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:extensions/mesa/mesa.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xcvt.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtsensors.bst
- components/qt6/qtsvg.bst
- components/qt6/qttools.bst
- components/kf6/kauth.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kidletime.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/krunner.bst
- components/kf6/kpackage.bst
- components/kf6/kquickcharts.bst
- components/kf6/kservice.bst
- components/kf6/ksvg.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/plasma/aurorae.bst
- components/plasma/breeze.bst
- components/plasma/kdecoration.bst
- components/plasma/kglobalacceld.bst
- components/plasma/knighttime.bst
- components/plasma/kscreenlocker.bst
- components/plasma/kwayland.bst
- components/plasma/libplasma.bst
- components/deps/libcanberra.bst
- components/deps/libdisplay-info.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kwin-%{plasma-version}.tar.xz'
  ref: fbad845044231174ca7aad45572d1713d1b6f65289d94cac24776a103f051e46
