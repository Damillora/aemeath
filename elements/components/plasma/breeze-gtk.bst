kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pycairo.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/sassc.bst
- components/plasma/breeze.bst

runtime-depends:
- freedesktop-sdk.bst:components/gtk3.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/breeze-gtk-%{plasma-version}.tar.xz'
  ref: 76caad4ca2e3ce8b02ae1ebe0c068101bb07db51da47f88fa3a40cdce393abf6
