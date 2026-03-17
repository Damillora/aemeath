kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-workspace-wallpapers-%{plasma-version}.tar.xz'
  ref: 73854af7129707a75f8b131edfd42c440410b8f219babb6173314a22cce915dd
