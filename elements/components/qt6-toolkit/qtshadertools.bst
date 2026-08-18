kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtshadertools-everywhere-src-%{qt6-track}.tar.xz'
  ref: 805046b8b7757665586890b375940047e874ae3ab00adb6d3f2b38fc6b200b1c
