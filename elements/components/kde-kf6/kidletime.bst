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
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kidletime.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g22ce088e4fe500277e671a9b8f422e40da3ec6bd
