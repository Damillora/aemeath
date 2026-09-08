kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/extra-cmake-modules.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/ocean-sound-theme-%{plasma-track}.tar.xz'
  ref: 452e5ab04f5e2d7cbf9357e4e12badf8493aefda437ba130eb38c9e511313b72
