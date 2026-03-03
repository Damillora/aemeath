kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/layer-shell-qt-%{plasma-version}.tar.xz'
  ref: 22fbc1d3894f926b96cfd5dca3ebf5ca7cc0b0bba86bbca6493903e24862f877
