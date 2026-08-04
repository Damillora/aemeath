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
  ref: 3d0368e992388fce0015e3622778062a67827b660bae6ab551e873ae18a3045c
