kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kwallet.bst
- components/deps/qt6-qcoro.bst
- components/deps/libaccounts-qt.bst
- components/deps/signon-qt6.bst
- components/deps/intltool.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/kaccounts-integration-%{gear-version}.tar.xz'
  ref: a449426e849b0562622585d11a12f8b407bbf9cd3a988083b68f17a657727b45
