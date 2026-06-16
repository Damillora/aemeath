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
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/breeze-gtk-%{plasma-version}.tar.xz'
  ref: 28599e177b4166a7b332f834a72696cf882cf9f6a9ee192708a27f474c1027c0
