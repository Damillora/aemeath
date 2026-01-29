kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libavif.bst
- freedesktop-sdk.bst:components/libheif.bst
- freedesktop-sdk.bst:components/libjxl.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/deps/libraw.bst
# TODO: openexr

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kimageformats.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.22.0-0-g19df8b03a86b24f85c42f1abcef95cb3c0f85c9b
