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
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/oxygen-sounds-%{plasma-track}.tar.xz'
  ref: 4e7b942544e5ebdecda5eb23a6858ac2a9429c0c54ffba8a2455f1ff4b9ca9de
