kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtshadertools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtquick3d.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquick3dphysics-everywhere-src-%{qt6-track}.tar.xz'
  ref: d1086d6f014e7b698945cf0ee1dc3e43545ed7dcf0b5e501c0d6836a96ac79af
