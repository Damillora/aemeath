kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/qt6-qcoro.bst
- components/deps/plasma-wayland-protocols.bst

runtime-depends:
- components/plasma/kactivitymanagerd.bst
- components/plasma/milou.bst
- components/plasma/kde-cli-tools.bst
- components/plasma/ocean-sound-theme.bst
- components/plasma/plasma-workspace-wallpapers.bst
#- components/gear/kio-extras.bst
- components/plasma/plasma-integration.bst
- components/deps/accountsservice.bst
- components/deps/qt6-phonon-vlc.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtlocation.bst
- components/qt6/qtpositioning.bst
- components/qt6/qtsvg.bst
- components/qt6/qttools.bst
- components/kf6/karchive.bst
- components/kf6/kauth.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/kded.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/kholidays.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kidletime.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/kjobwidgets.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/knotifyconfig.bst
- components/kf6/kpackage.bst
- components/kf6/kparts.bst
- components/kf6/kquickcharts.bst
- components/kf6/krunner.bst
- components/kf6/kservice.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/ksvg.bst
- components/kf6/ktexteditor.bst
- components/kf6/ktextwidgets.bst
- components/kf6/kuserfeedback.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/prison.bst
- components/kf6/solid.bst
- components/kf6/networkmanager-qt.bst
- components/plasma/knighttime.bst
- components/plasma/kpipewire.bst
- components/plasma/kscreenlocker.bst
- components/plasma/kwayland.bst
- components/plasma/kwin.bst
- components/plasma/layer-shell-qt.bst
- components/plasma/libksysguard.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-activities.bst
- components/plasma/plasma-activities-stats.bst
- components/plasma/plasma5support.bst
- components/gear/libkexiv2.bst
- components/deps/kirigami-addons.bst
- components/deps/libcanberra.bst
- components/deps/libqalculate.bst
- components/deps/qt6-phonon.bst
- components/staging/appstream-qt.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-workspace-%{plasma-version}.tar.xz'
  ref: 494b671d70f67ee382feaed0dca72ed67fe7a423a6338e2cdb2411f93bce741e
