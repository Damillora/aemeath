kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-workspace-wallpapers-%{plasma-version}.tar.xz'
  ref: 4a021dbda761da7aaf7192e8d038aa1f2305a576a57f2384f54bc8ed90731418
