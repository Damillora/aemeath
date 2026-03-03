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
  url: 'kde_stable:plasma/%{plasma-version}/ocean-sound-theme-%{plasma-version}.tar.xz'
  ref: 7a6c71c0bba6b0eb0c774907d0804565666ea26f321e26017284bd341a8cc515
