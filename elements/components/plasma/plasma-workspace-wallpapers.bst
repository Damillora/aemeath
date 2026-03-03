kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-workspace-wallpapers-%{plasma-version}.tar.xz'
  ref: c42482fa84c325bcf033db0f8d9a01c54a7b1697c5d6d5cc3078a5d814a5c24d
