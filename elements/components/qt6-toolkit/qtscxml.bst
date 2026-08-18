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
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtscxml-everywhere-src-%{qt6-track}.tar.xz'
  ref: f594c4bba7f8bffb20857973c72895669d6e54df08c8d897f50d15251cec35ff
