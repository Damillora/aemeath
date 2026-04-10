kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kitemmodels.bst
- components/kf6/kwindowsystem.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/krunner.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-g33c03adfbc8f52cfa910d2af07a53337d79dea02
