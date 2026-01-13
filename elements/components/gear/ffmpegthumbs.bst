kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kio.bst
- components/kf6/kcoreaddons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/ffmpegthumbs-%{gear-version}.tar.xz'
  ref: ab82433cfda2fb28767e7b9de09ea4b6b6f6d1aba367e9fc77defcf451748c5f
