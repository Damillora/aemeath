kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/plasma-workspace-wallpapers-%{plasma-version}.tar.xz'
  ref: 0e92220c0ae0b7c42644ebed6fe159fb0097a892e640cb1242047c929931ea0a
