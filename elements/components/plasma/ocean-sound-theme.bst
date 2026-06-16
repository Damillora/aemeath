kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtbase.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/ocean-sound-theme-%{plasma-version}.tar.xz'
  ref: 10b2baca92ab7198abcc20d58ddad31910c8c6beee4711fc2a4a21505446f135
