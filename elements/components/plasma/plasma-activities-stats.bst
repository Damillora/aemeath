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
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/plasma-activities-stats-%{plasma-version}.tar.xz'
  ref: 2b4aaed9c4685bc2c056a0cba84d427ef2f1eb7a4f841d5877d0347b5b11cc13
