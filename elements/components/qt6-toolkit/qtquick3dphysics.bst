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
  ref: 1c5a24cf4285fc48481d7c7ae65bd6e80ed98b10964ea6e8530c608c4cdeb86e
