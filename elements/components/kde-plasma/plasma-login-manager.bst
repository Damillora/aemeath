kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/sys-services/linux-pam.bst
- components/x11-libs/xau.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/layer-shell-qt.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma-workspace.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DDBUS_CONFIG_FILENAME=plasma_org.freedesktop.DisplayManager.conf
    -DPAM_OS_CONFIGURATION=aemeath
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-login-manager-%{plasma-track}.tar.xz'
  ref: 6ed7c3bbac1c79bc1a21c330923804aa6c3f720fafd6accb1a6a1fada684e84f
- kind: local
  path: files/plasma-login-manager
