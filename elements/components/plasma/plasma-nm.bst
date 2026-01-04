kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/knotifications.bst
- components/kf6/kquickcharts.bst
- components/kf6/ksvg.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/networkmanager-qt.bst
- components/kf6/modemmanager-qt.bst
- components/kf6/prison.bst
- components/kf6/solid.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-workspace.bst
- components/deps/kirigami-addons.bst
- components/deps/qt6-qca.bst
- components/deps/qt6-qcoro.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-nm-%{plasma-version}.tar.xz'
  ref: a584c68be981ae8efafaa6a5433983d6475454ee27806ee41c7e2a4d0859c8af
