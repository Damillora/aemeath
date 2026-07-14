kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
- components/graphics-data/vulkan-headers.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/graphics-libs/mesa.bst
- components/graphics-libs/lcms.bst
- components/x11-tools/xwayland.bst
- components/input-libs/libinput.bst
- components/input-libs/libei.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xcvt.bst
- components/x11-libs/xkbcommon.bst
- components/x11-libs/xcb-util-keysyms.bst
- components/x11-libs/xcb-util-wm.bst
- components/desktop-libs/pipewire.bst
- components/sys-libs/systemd-libs.bst
- components/wayland-libs/wayland.bst
- components/graphics-libs/libdrm.bst
- components/graphics-libs/libepoxy.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qt5compat.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtsensors.bst
- components/qt6-toolkit/qtsvg.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-plasma/aurorae.bst
- components/kde-plasma/breeze.bst
- components/kde-plasma/kdecoration.bst
- components/kde-plasma/kglobalacceld.bst
- components/kde-plasma/knighttime.bst
- components/kde-plasma/kscreenlocker.bst
- components/kde-plasma/kwayland.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/milou.bst
- components/kde-plasma/plasma-activities.bst
- components/desktop-libs/libcanberra.bst
- components/hw-libs/libdisplay-info.bst
- components/qt6-libs/libqaccessibilityclient.bst

runtime-depends:
- components/sys-data/hwdata.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      setcap cap_sys_nice+ep "${sysroot}%{bindir}/kwin_wayland"

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kwin-%{plasma-track}.tar.xz'
  ref: 345b45d400884cc6b00f4b3585cc056aa2780f32afe2df394d20c5a98273c559
