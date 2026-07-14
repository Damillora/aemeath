kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtshadertools.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
- components/qt6-libs/qcoro.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/sys-libs/libdbus.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/util-libs/icu.bst
- components/x11-libs/ice.bst
- components/x11-libs/sm.bst
- components/x11-libs/x11.bst
- components/x11-libs/xau.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xcursor.bst
- components/x11-libs/xfixes.bst
- components/x11-libs/xft.bst
- components/x11-libs/xtst.bst
- components/x11-libs/xcb-util.bst
- components/x11-libs/xcb-util-cursor.bst
- components/x11-libs/xcb-util-image.bst
- components/sys-libs/systemd-libs.bst
- components/wayland-libs/wayland.bst
- components/sys-libs/zlib-ng.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtlocation.bst
- components/qt6-toolkit/qtpositioning.bst
- components/qt6-toolkit/qtsvg.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/kded.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/kholidays.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/kquickcharts.bst
- components/kde-kf6/krunner.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/ktexteditor.bst
- components/kde-kf6/ktextwidgets.bst
- components/kde-kf6/kuserfeedback.bst
- components/kde-kf6/kwallet.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/prison.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/networkmanager-qt.bst
- components/kde-kf6/baloo.bst
- components/kde-plasma/knighttime.bst
- components/kde-plasma/kpipewire.bst
- components/kde-plasma/kscreenlocker.bst
- components/kde-plasma/kwayland.bst
- components/kde-plasma/kwin.bst
- components/kde-plasma/layer-shell-qt.bst
- components/kde-plasma/libksysguard.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma-activities.bst
- components/kde-plasma/plasma-activities-stats.bst
- components/kde-plasma/plasma5support.bst
- components/kde-gear/libkexiv2.bst
- components/kde-misc/kirigami-addons.bst
- components/desktop-libs/libcanberra.bst
- components/util-libs/libqalculate.bst
- components/qt6-libs/appstream-qt.bst

runtime-depends:
- components/x11-tools/xwayland.bst
- components/kde-plasma/kactivitymanagerd.bst
- components/kde-plasma/milou.bst
- components/kde-plasma/kde-cli-tools.bst
- components/kde-plasma/ocean-sound-theme.bst
- components/kde-plasma/plasma-workspace-wallpapers.bst
- components/kde-plasma/plasma-integration.bst
- components/kde-gear/kio-extras.bst
- components/desktop-services/accountsservice.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_X11_SESSION=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

config:
  install-commands:
    (>):
    - rm -rf '%{install-root}%{datadir}/xsessions'

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-workspace-%{plasma-track}.tar.xz'
  ref: 438851708a70781ecf3afa0a08488fdc6768b6ed5abca5f202a87e395aa6376f
