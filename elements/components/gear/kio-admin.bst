kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/deps/qt6-polkit-qt.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DQT_MAJOR_VERSION=6

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-version}/src/kio-admin-%{gear-version}.tar.xz'
  ref: d8e5260c29490e07df04c1772ed1782dfc25d3dc2650acfd8f8e04c536a7c036
