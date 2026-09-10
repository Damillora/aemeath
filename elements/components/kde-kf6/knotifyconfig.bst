kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/desktop-libs/libcanberra.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/knotifyconfig.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g20e54b27e0bba85301e39141be3e43e7523f975d
