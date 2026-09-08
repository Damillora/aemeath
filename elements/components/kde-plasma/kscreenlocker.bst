kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
- components/kde-kf6/kcmutils.bst

depends:
- components/sys-services/linux-pam.bst
- components/x11-libs/xcb-util-keysyms.bst
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/solid.bst
- components/kde-plasma/layer-shell-qt.bst
- components/kde-plasma/libkscreen.bst
- components/kde-plasma/libplasma.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kscreenlocker-%{plasma-track}.tar.xz'
  ref: 6c41ce2cb79d2b85d4fbe5a3a61c09e40c70e5a869ae6f0352c7e1cb3b44606b
