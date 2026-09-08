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
  ref: d71f5945ef3086f56f52f531508c2ab363078fbbd5ae4084bd3647049e6ee94f
