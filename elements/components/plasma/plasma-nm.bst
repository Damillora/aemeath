kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/knotifications.bst
- components/kf6/ksvg.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/networkmanager-qt.bst
- components/kf6/modemmanager-qt.bst
- components/kf6/prison.bst
- components/kf6/solid.bst
- components/plasma/libplasma.bst
- components/deps/qt6-qca.bst
- components/deps/qt6-qcoro.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-nm-%{plasma-version}.tar.xz'
  ref: 01e543d5c6f101fb2e01ceefd7d4338b7e2ed0b2d67546d7227ed3aa78dd5d50
