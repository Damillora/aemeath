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
  ref: de64d1ade6deb440220106d3946fe99fd4404bc598b0bb466b353a668ad9bdb8
