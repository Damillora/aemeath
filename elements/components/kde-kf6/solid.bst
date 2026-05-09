kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/desktop-services/udisks.bst
- components/qt6-toolkit/qtbase.bst
- components/desktop-services/upower.bst
- components/hw-libs/libimobiledevice.bst
- components/sys-data/media-player-info.bst
- components/util-sys/util-linux.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/solid.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g0a346290fdabca49fa0e0b6fe6c51d55eaeda5b5
