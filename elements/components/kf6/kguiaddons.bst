kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/qt6/qtwayland.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kguiaddons.git
  track: 'v%{kf6-version}.*'
  ref: v6.25.0-rc1-0-gf9fd9583fd2c235678f811ba13a7114fd47e0e56
