kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/libdrm.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/knewstuff.bst
- components/kf6/kpackage.bst
- components/kf6/kservice.bst
- components/kf6/solid.bst
- components/deps/libpcap.bst
- components/deps/lm-sensors.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/libksysguard-%{plasma-version}.tar.xz'
  ref: f4061299a69dc9e3cf83c0e54c174708d8dc748ae208d30a04b274c552586dbf
