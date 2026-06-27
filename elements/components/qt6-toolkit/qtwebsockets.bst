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
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtwebsockets-everywhere-src-%{qt6-track}.tar.xz'
  ref: 243e3aa11924c8c5c1645e892f62d013caa3766c57512ca926d5b58146646fbf
