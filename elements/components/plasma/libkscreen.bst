kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/qt6/qttools.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/libkscreen-%{plasma-version}.tar.xz'
  ref: 6efba58057a2635da6f1855ba6b08e57e636c976421ba5e3f5f667e6a57b0ce1
