kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/util-libs/glib.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/kwallet.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/networkmanager-qt.bst
- components/kde-kf6/modemmanager-qt.bst
- components/kde-kf6/prison.bst
- components/kde-kf6/solid.bst
- components/kde-plasma/libplasma.bst
- components/kde-misc/kirigami-addons.bst
- components/qt6-libs/qca.bst
- components/qt6-libs/qcoro.bst
- components/qt6-libs/qtkeychain.bst

runtime-depends:
- components/kde-kf6/kquickcharts.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-nm-%{plasma-track}.tar.xz'
  ref: c4349676e375de8d9833eff7182b61970c491d998b29bb6262ea55ca45b474da
