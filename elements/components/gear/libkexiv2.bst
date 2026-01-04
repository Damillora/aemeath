kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/deps/exiv2.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/libkexiv2-%{gear-version}.tar.xz'
  ref: 1deb0fa6f270b588aa3ddd946c42b00a974f79d2fc079f1125ccc8ff0e99b996
