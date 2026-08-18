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
  ref: 44414617f0058ff34965fa852027bfcc7e4f71eefca8cd4406c96af22c64ad93
