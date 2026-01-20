kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/doxygen.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/deps/qt6-kdsoap.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: kde:libraries/kdsoap-ws-discovery-client.git
  track: 'v*'
  ref: v0.4.0-0-gcc51b4fc7401c9898d42b34cdf0d7abd90f4a447
