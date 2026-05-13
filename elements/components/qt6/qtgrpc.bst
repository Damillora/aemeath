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
  ref: 437b04f0c550ccdb1739ca5f9119b73dfa0376564815e8bfc199890643e2a250
