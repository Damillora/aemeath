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
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kpmcore-%{gear-track}.tar.xz'
  ref: 3367f581294363fe450f0891518f7f07b7d0c6562c7348236d90008065f79e50
