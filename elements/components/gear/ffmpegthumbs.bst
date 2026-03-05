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
  ref: eeb38acc65a955c16532b83a20bca08fce3e484674dbb0ccaecae44277ef8de8
