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
  ref: 08018d9465fccaf9f56ee8178f2aa3419d6bcfef667308bb558e387516216e6d
