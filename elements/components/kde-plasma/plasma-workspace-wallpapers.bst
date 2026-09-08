kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-workspace-wallpapers-%{plasma-track}.tar.xz'
  ref: c481ac4b937a2b1b080c3273e0557cd0c9d57b644156b941902483fd8e1646b5
