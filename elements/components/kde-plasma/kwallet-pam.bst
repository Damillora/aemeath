kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/sys-services/linux-pam.bst
- components/security-libs/libgcrypt.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kwallet.bst
- components/net-tools/socat.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kwallet-pam-%{plasma-track}.tar.xz'
  ref: a720a1440edf8734e4b8d4d4d5ea96fc14946c21f38f6a5ca1b738d8a8dc583b
