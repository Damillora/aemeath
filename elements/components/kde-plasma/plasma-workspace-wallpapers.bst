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
  ref: d0bab9b0182480a41fe0c677a1f5d4d1c3088e0f3aa6883a0bc25423d94ecfd0
