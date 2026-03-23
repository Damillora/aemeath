kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/grpc.bst
- freedesktop-sdk.bst:components/protobuf.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtgrpc-everywhere-src-%{qt6-version}.tar.xz'
  ref: 9dedcb51836cd0e8703764f0c89ef5a7da414e0c9a0d67d0d8d6ab17bb94a879
