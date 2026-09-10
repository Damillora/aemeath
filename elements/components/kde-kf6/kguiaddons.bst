kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/x11-libs/x11.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtwayland.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kguiaddons.git
  track: 'v%{kf6-track}.*'
  ref: v6.30.0-rc1-0-g7c766f6f99238c13acb8c50d8391600e964f3b8a
