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
  ref: 633db72922d2c7f8a86e533cedec2695212e61981a885f1df07c2eeb72f4312c
