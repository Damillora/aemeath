kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/qt6-libs/polkit-qt.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DQT_MAJOR_VERSION=6

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kio-admin-%{gear-track}.tar.xz'
  ref: 7389765ae8e4495234bd72f062d5e87a169360a5380c6078ef6871e1403cb3d6
