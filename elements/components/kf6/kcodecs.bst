kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kcodecs.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-g133fd538d7698512ec1a24befdc7762991dd8df5
