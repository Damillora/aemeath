kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtwebsockets.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: 'github:danvratil/qcoro.git'
  track: 'v*'
  ref: ef1231ae490465b4f592ca326eee6d56a3d802ae
