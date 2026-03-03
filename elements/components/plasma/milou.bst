kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/krunner.bst
- components/kf6/ksvg.bst
- components/plasma/libplasma.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/milou-%{plasma-version}.tar.xz'
  ref: 748f25a728d01fb7f6bcc875fac3a441498f592b33ab9bcb2572ec973a109818
