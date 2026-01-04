kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/sassc.bst
- components/deps/python3-cairo.bst
- components/plasma/breeze.bst


depends:
- aemeath/platform.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/breeze-gtk-%{plasma-version}.tar.xz'
  ref: 9caa0ed40bfc9d6e5cb99782faeba052713f1b99fcebfaa326e1802d168a364b
