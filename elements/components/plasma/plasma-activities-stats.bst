kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/plasma/plasma-activities.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-activities-stats-%{plasma-version}.tar.xz'
  ref: 435b5e6358380dda59f8c6d72e8b0fcf277c00b715b17bf59a0d3f04076fd814
