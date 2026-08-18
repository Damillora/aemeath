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
  ref: 8eb7615e39332a10f506e8dd70f02d5954bb5949ff54f6dcbf8bd6168222f9df
