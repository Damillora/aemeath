kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/doxygen.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-libs/kdsoap.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DQT_MAJOR_VERSION=6

sources:
- kind: git_repo
  url: kde:libraries/kdsoap-ws-discovery-client.git
  track: 'v*'
  ref: v0.4.0-0-gcc51b4fc7401c9898d42b34cdf0d7abd90f4a447
