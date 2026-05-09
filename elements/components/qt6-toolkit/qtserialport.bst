kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/systemd-libs.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtserialport-everywhere-src-%{qt6-track}.tar.xz'
  ref: 9af31a898ffd9a7e4faf6fed845d29e783c716885789055cbe319f3e072d3974
