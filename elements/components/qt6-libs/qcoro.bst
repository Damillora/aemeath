kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtwebsockets.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_BUILD_TYPE=Release
    -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:danvratil/qcoro.git
  track: v*
  ref: v0.13.0-0-g98f23d8d8d67e9e24217d268927faec97c713fb0
