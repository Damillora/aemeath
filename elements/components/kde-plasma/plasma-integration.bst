kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcolorscheme.bst
- components/wayland-libs/wayland.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/qqc2-desktop-style.bst

runtime-depends:
- components/kde-plasma/xdg-desktop-portal-kde.bst
- components/sys-fonts/noto-fonts.bst
- components/sys-fonts/noto-emoji.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_QT5=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-integration-%{plasma-track}.tar.xz'
  ref: ab606df87cc34fb8a85ce2c549cc61e126cdf210ac16a1e8594fa363173e89dc
