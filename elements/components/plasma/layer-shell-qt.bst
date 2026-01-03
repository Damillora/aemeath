kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/layer-shell-qt-%{plasma-version}.tar.xz'
  ref: bb95db253ffcd29e08191656b6a5449f8a8800c38256873e2529749b55eaa80a
