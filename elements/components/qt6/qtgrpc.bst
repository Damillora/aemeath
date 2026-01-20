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
  ref: 98138fb8633c4922ef7ef49b8301f7cbfb7beb7897d44d72e639120a29f4577f
