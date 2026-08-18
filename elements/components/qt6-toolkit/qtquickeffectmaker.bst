kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtquick3d.bst
- components/qt6-toolkit/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquickeffectmaker-everywhere-src-%{qt6-track}.tar.xz'
  ref: 7923dc7284e933a5e36ae24a427564f04e0b27af8dfa38eee8092c01c2835cb7
