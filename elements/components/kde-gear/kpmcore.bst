kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/qt6-libs/polkit-qt.bst

runtime-depends:
- components/filesystem-util/btrfs-progs.bst
- components/filesystem-util/dosfstools.bst
- components/filesystem-util/e2fsprogs.bst
#- components/exfat-progs.bst
#- components/f2fs-tools.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kpmcore-%{gear-track}.tar.xz'
  ref: 38ad9c1b52115858cd78fe76355d81bb4db84ad2c31b0933bcf58f4c85b51023
