kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/deps/libcanberra.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/knotifyconfig.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-gfbf1b41bf120f87dbb8df1e557bccf0085c9e610
