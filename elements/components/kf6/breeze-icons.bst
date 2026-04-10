kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_ICON_GENERATION=OFF

sources:
- kind: git_repo
  url: kde:frameworks/breeze-icons.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-gd1b94254e6e5b9c57595413e1766beaae8f08ff5
