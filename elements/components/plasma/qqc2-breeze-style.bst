kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kguiaddons.bst
- components/kf6/kiconthemes.bst
- components/kf6/kirigami.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/qqc2-breeze-style-%{plasma-version}.tar.xz'
  ref: 4c41b9f769e919bb3d978937f9ba13efe722785c3e44d8ce7e752d340e245fb0
