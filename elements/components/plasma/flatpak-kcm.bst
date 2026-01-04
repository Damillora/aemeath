kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/kservice.bst
- freedesktop-sdk.bst:components/flatpak.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/flatpak-kcm-%{plasma-version}.tar.xz'
  ref: 0db35b5f1611e77a6ced284484b22a81a82eb3d26b89dc65153af8c5e78011b9
