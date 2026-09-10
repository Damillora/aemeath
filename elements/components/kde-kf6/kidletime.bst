kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xext.bst
- components/x11-libs/xscrnsaver.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kidletime.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-gdf4769c946ef412ffa0e28e658f86ba40511c967
