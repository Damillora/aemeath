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
- components/deps/kirigami-addons.bst
- components/deps/plasma-wayland-protocols.bst
- components/deps/qt6-qtkeychain.bst
variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/krdp-%{plasma-version}.tar.xz'
  ref: e65ca56cf2f966994510dccecd53892922e261ad7dba9911d2f374060293c6db
