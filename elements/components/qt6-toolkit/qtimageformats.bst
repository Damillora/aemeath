kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libwebp.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtimageformats-everywhere-src-%{qt6-track}.tar.xz'
  ref: b2bf6c6845ac175ed7f819145483ba4676f617aaa6a5012c8efee63c8bbac413
