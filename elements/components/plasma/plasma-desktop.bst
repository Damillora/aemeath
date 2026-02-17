kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- components/deps/intltool.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

runtime-depends:
- components/plasma/systemsettings.bst
- components/plasma/plasma-nm.bst
- components/plasma/plasma-pa.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/sdl3.bst
- freedesktop-sdk.bst:components/sdl2-compat.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xi.bst
- freedesktop-sdk.bst:components/xorg-lib-xkbfile.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcmutils.bst
- components/kf6/kcodecs.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/kjobwidgets.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/knotifyconfig.bst
- components/kf6/kpackage.bst
- components/kf6/krunner.bst
- components/kf6/kservice.bst
- components/kf6/ksvg.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/solid.bst
- components/kf6/sonnet.bst
- components/plasma/kmenuedit.bst
- components/plasma/kpipewire.bst
- components/plasma/libksysguard.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-activities.bst
- components/plasma/plasma-activities-stats.bst
- components/plasma/plasma-workspace.bst
- components/plasma/plasma5support.bst
- components/plasma/polkit-kde-agent.bst
- components/plasma/powerdevil.bst
- components/deps/kirigami-addons.bst
- components/deps/libcanberra.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_KCM_MOUSE_X11=OFF \
    -DBUILD_KCM_TOUCHPAD_X11=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-desktop-%{plasma-version}.tar.xz'
  ref: d91e4dd276ea1ad743e31ace859a36ec4dfb431495c81eb1a8eb32a49c73f342
