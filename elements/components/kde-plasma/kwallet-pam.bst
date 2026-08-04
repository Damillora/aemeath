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
  ref: 24430ef5bef8b7c06b8f6770058afaab8fbbc166392535408b4e1d9e99a1ca9c
