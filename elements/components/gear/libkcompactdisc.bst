kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/ki18n.bst
- components/kf6/solid.bst
- components/deps/qt6-phonon.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/libkcompactdisc-%{gear-version}.tar.xz'
  ref: 0f4c6b9f41a3cf0d1451204c58abf5c303ec6671f1d15989cd0d8d92bb9ee567
