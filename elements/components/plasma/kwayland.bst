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
  url: 'kde_stable:plasma/%{plasma-version}/kwayland-%{plasma-version}.tar.xz'
  ref: f3497dfb4163a1bab447e546340a4858baad6fd39cd24b44f427c0e96d6508a4
