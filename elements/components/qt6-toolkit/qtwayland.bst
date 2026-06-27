kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/libglvnd.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtsvg.bst
- components/x11-libs/xkbcommon.bst
- components/wayland-libs/wayland.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtwayland-everywhere-src-%{qt6-track}.tar.xz'
  ref: 95788aa502f75441d4edf65932b235f76523084e13dbbb7b9ee2d207b32bd9b3
