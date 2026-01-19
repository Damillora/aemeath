kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/pciutils.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/dmidecode.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kservice.bst
- components/kf6/solid.bst
- components/freedesktop/clinfo.bst
- components/freedesktop/mesa-demos.bst
- components/freedesktop/vulkan-tools.bst
- components/deps/wayland-utils.bst
- components/deps/libdisplay-info.bst
- components/deps/lm-sensors.bst

runtime-depends:
- components/plasma/systemsettings.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kinfocenter-%{plasma-version}.tar.xz'
  ref: 567b8f9f4c806414cf417fd59aceaa37485696bd6b655aea01fffd6e2bd5b81c
