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
  ref: 9ad12fdad851e69f4ff7d966e8b85b93c23cfc7b01f90434914300c60140e971
