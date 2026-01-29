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
  ref: v6.22.0-0-g13c53eb2b30c89da3a0c74b9446ec82669036d11
