kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/util-libs/libnl.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/networkmanager-qt.bst
- components/kde-plasma/libksysguard.bst
- components/hw-libs/lm-sensors.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/ksystemstats-%{plasma-track}.tar.xz'
  ref: 919f2436ff8da8ff6ea7d2c007bdaf6bcd8a2f096d0544ba450124ffac56dc94
