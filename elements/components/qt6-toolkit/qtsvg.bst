kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/zlib-ng.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtsvg-everywhere-src-%{qt6-track}.tar.xz'
  ref: d594337feca84c26fb67fe87b85e6a5c12fda404b611d905f9d138210c311876
