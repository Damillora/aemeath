kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- freedesktop-sdk.bst:components/pipewire.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kpipewire-%{plasma-version}.tar.xz'
  ref: fc89ef7ccdcdbbdc55b9147420f5f5cf85bf3902c07b3ae0c0dbf9d4a23ba48a
