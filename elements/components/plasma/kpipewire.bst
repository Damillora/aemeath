kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libva.bst
- freedesktop-sdk.bst:components/pipewire.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/kpipewire-%{plasma-version}.tar.xz'
  ref: dbf839b779c508c2020bdf9d642762387cba85059291deab38e8a0c15223badb
