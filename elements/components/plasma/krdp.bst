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
  ref: 95b9ed58693e4bc5b4a9d991ac1af1bc6d184a7257974440ff810279e5421a2c
