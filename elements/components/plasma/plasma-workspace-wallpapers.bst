kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-workspace-wallpapers-%{plasma-version}.tar.xz'
  ref: 512cf1c9a9440da5f9b4915e515a7d4eb530bb39da1b321848d8d5cfb344d1ad
