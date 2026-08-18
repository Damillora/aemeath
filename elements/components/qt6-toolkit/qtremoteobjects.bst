kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtremoteobjects-everywhere-src-%{qt6-track}.tar.xz'
  ref: 5e0c9681799ec2b1179a712506266fb01fb2491e94bd2dba942b72fdef797cfd
