kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcontacts.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/networkmanager-qt.bst
- components/kde-kf6/prison.bst
- components/kde-misc/kirigami-addons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/qrca-%{gear-track}.tar.xz'
  ref: c6d3fc50e20b004c8aa981e4921f117244681bbabfce2e687f2b612e4b2f6427
