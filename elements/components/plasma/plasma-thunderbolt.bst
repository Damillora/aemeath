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
- components/kf6/knotifications.bst
- components/deps/boltd.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-thunderbolt-%{plasma-version}.tar.xz'
  ref: 01e3b9aa7c7e68adb941f29b64bf9827b012d8b2e4742881e1776d9e97887924
