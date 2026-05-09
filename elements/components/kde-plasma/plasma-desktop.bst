kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
- components/dev-tools/intltool.bst
- components/wayland-libs/wayland-protocols.bst

runtime-depends:
- components/kde-plasma/systemsettings.bst
- components/kde-plasma/plasma-nm.bst
- components/kde-plasma/plasma-pa.bst

depends:
- components/x11-libs/xkbcommon.bst
- components/input-libs/libwacom.bst
- components/graphics-libs/sdl3.bst
- components/graphics-libs/sdl2-compat.bst
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xcursor.bst
- components/x11-libs/xi.bst
- components/x11-libs/xkbfile.bst
- components/x11-libs/xcb-util-keysyms.bst
- components/desktop-tools/xdg-user-dirs.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qt5compat.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kbookmarks.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcodecs.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/knotifyconfig.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/krunner.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/sonnet.bst
- components/kde-plasma/kmenuedit.bst
- components/kde-plasma/kpipewire.bst
- components/kde-plasma/libksysguard.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma-activities.bst
- components/kde-plasma/plasma-activities-stats.bst
- components/kde-plasma/plasma-workspace.bst
- components/kde-plasma/plasma5support.bst
- components/kde-plasma/polkit-kde-agent.bst
- components/kde-plasma/powerdevil.bst
- components/kde-misc/kirigami-addons.bst
- components/desktop-libs/libcanberra.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_KCM_MOUSE_X11=OFF \
    -DBUILD_KCM_TOUCHPAD_X11=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-desktop-%{plasma-track}.tar.xz'
  ref: f0450dc26706fc2d719ab28e3102149cfbf6a72e81cd310c936b85c08abb6f2f
