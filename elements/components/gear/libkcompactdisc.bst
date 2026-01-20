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
  ref: 4f0b409a2fb332e6a94a590465f7c1782883d2ed76078125c734b1cc07f133cc
