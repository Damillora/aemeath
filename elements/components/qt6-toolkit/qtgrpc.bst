kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/net-libs/grpc.bst
- components/util-libs/protobuf.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtgrpc-everywhere-src-%{qt6-track}.tar.xz'
  ref: 437b04f0c550ccdb1739ca5f9119b73dfa0376564815e8bfc199890643e2a250
