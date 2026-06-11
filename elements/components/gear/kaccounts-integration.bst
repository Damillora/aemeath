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
- components/deps/libaccounts-qt.bst
- components/deps/intltool.bst
- components/deps/qt6-qcoro.bst
- components/deps/qt6-signon.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-version}/src/kaccounts-integration-%{gear-version}.tar.xz'
  ref: 7fbbb5b8b009588b114b84f4c5913b3e429fb004f9ad7ce1bbd8564530df9e96
