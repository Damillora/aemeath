kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kwallet.bst
- components/qt6-libs/libaccounts-qt.bst
- components/qt6-libs/qcoro.bst
- components/qt6-libs/signon.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kaccounts-integration-%{gear-track}.tar.xz'
  ref: efdf9f14f7fa917863effd47b0c7ebd0b49687e9205049ff8cb868405f16334c
