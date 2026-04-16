kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kio.bst
- components/kf6/kcoreaddons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/ffmpegthumbs-%{gear-version}.tar.xz'
  ref: 7663ba531dbd90fbb15d6309fd94e96a4b283f57d8a48da6778f7130ee45c5f1
