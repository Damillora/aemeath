kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtnetworkauth-everywhere-src-%{qt6-track}.tar.xz'
  ref: 0c83c23077ab7824393fa15bb0015c3c5acaf5678544aa789e3fcbb4d41fa05b
