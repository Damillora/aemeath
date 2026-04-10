kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/aspell.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/sonnet.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-gf0ff2fda2fe72500bfc99a3f334f22590a64171d
