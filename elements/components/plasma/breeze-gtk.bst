kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/sassc.bst
- components/deps/python3-cairo.bst
- components/plasma/breeze.bst

runtime-depends:
- freedesktop-sdk.bst:components/gtk3.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/breeze-gtk-%{plasma-version}.tar.xz'
  ref: 35da4e0b8fbb168c14e6118527d619089b7acc3f128e20a8c0ad84096b54d281
