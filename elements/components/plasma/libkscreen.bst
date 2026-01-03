kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/libkscreen-%{plasma-version}.tar.xz'
  ref: 98a684fac01d0d3ea309a89f00a7739ec32263df38f5a7b988e74302af546f94
