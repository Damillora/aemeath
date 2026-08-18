kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/util-libs/icu.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qt5compat-everywhere-src-%{qt6-track}.tar.xz'
  ref: 68c320fe3391096a9f2d870170edf1b67dac8af1d0e51c0c9e5343807f114287
