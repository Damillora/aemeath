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
  ref: 844b49415e8bcc88e02c7cf85b058866909d9e5d73131efe10ad23eec1d71a28
