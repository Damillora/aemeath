kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/graphics-libs/libdrm.bst
- components/graphics-tools/clinfo.bst
- components/graphics-tools/mesa-utils.bst
- components/graphics-tools/vulkan-tools.bst
- components/hw-libs/libdisplay-info.bst
- components/hw-libs/libusb.bst
- components/hw-libs/lm-sensors.bst
- components/hw-tools/pciutils.bst
- components/hw-tools/dmidecode.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/solid.bst
- components/media-libs/libpulse.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/util-sys/iproute2.bst
- components/wayland-tools/wayland-utils.bst

runtime-depends:
- components/kde-plasma/systemsettings.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kinfocenter-%{plasma-track}.tar.xz'
  ref: 436eb7e95e061ebddb84d0e51b5abf477a5a3b2698462ea247ea6ba633a88655
