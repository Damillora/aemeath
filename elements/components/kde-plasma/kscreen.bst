kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xi.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/kimageformats.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-plasma/layer-shell-qt.bst
- components/kde-plasma/libkscreen.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma5support.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kscreen-%{plasma-track}.tar.xz'
  ref: 8918c970ae363c7c1b8db76b21dc969162b5f41353fd88bde8667b46536eb8a6
