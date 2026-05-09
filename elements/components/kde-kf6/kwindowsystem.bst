kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xfixes.bst
- components/x11-libs/xcb-util-keysyms.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtwayland.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kwindowsystem.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g97aadfe443fcd097d78f9926d4c0fb8c52011727
