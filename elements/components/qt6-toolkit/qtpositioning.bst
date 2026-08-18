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
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtpositioning-everywhere-src-%{qt6-track}.tar.xz'
  ref: d8cf15ad43a3b1520adac64cec5900028525cf75f01a4c82a0002e7ac1ae7499
