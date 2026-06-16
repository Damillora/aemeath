kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/kwayland-%{plasma-version}.tar.xz'
  ref: 8621d17e9100be60ea340235208d044fd02931dbef76a32d9a477de31c8e33f4
