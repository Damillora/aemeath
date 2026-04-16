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
  url: 'kde_stable:release-service/%{gear-version}/src/kaccounts-integration-%{gear-version}.tar.xz'
  ref: 9d23ce5f11d0055bd26bad437910015d598ce8a1b8f8af30e56a8a7a3b15953b
