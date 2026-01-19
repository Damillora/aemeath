kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/cmake.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/extra-cmake-modules.git'
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-g3f76d71045e935ced4723c12345162f16cc8cb21
