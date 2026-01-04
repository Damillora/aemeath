kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- components/deps/intltool.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

runtime-depends:
#- components/plasma/systemsettings.bst
- components/plasma/plasma-nm.bst
- components/plasma/plasma-pa.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kholidays.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/kjobwidgets.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/kpackage.bst
- components/kf6/krunner.bst
- components/kf6/kservice.bst
- components/kf6/ksvg.bst
- components/kf6/kunitconversion.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/networkmanager-qt.bst
- components/kf6/sonnet.bst
- components/plasma/kwin.bst
- components/plasma/plasma5support.bst
- components/plasma/plasma-workspace.bst
- components/deps/kirigami-addons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kdeplasma-addons-%{plasma-version}.tar.xz'
  ref: 25106469a681f363f7b415fb26d89aed5734dc2371839697a2f05fd4558b416f
