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
  ref: 02e5bb5330a2dd9fbae0dba1e1c8536a78dc1f88ba2756e8b96f928156d3c180
