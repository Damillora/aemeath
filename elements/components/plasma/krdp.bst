kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kstatusnotifieritem.bst
- components/plasma/kpipewire.bst
- components/deps/freerdp.bst
- components/deps/plasma-wayland-protocols.bst
- components/deps/qt6-qtkeychain.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/krdp-%{plasma-version}.tar.xz'
  ref: 81ab6cf70162013ad872af61fcd11f2cd6a948fd815179fd280cbd711b1739bd
