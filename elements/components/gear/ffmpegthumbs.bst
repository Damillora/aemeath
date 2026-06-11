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
  url: 'kde_download:%{gear-branch}/release-service/%{gear-version}/src/ffmpegthumbs-%{gear-version}.tar.xz'
  ref: 865a1904b1f664c7118976603e38ffcb0a5873782d40eb684268767a303d8d48
