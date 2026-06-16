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
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/milou-%{plasma-version}.tar.xz'
  ref: 8c94a4c3cef9bc625b541cb3d4c2f0a95bfa13d31f3c180633f7ef9d2701db1e
