kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/deps/qt6-qtkeychain.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/ksshaskpass-%{plasma-version}.tar.xz'
  ref: 0ef4d19643fabb5ef1e23c4686d6a96d33b5ed8f25d1654d4c8254bcfbff2261
