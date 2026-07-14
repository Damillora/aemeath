kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kwallet.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/qt6-libs/qtkeychain.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/ksshaskpass-%{plasma-track}.tar.xz'
  ref: d275e6b3427e6f120c97f7a6e64d9d157829976a1241277f13cdef1c7e2b193a
