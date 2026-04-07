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
  ref: 5ee332a31c5e86d6dd0a3bb7cd9a43e176adc2582f2e3b7d5e0c2fa9b90e9774
