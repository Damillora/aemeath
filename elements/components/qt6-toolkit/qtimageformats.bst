kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libwebp.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtimageformats-everywhere-src-%{qt6-track}.tar.xz'
  ref: cecd8900f34b6550076309bc94f62f828008b633a4239e0a08c86788f41001f8
