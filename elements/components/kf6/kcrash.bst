kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kcrash.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-g415abf541297feb1b42dd8e6dc7fa045553699a1
