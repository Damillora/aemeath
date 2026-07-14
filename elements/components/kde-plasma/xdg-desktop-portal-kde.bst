kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/x11-libs/xkbcommon.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemviews.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/kwayland.bst

runtime-depends:
- components/desktop-services/xdg-desktop-portal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/xdg-desktop-portal-kde-%{plasma-track}.tar.xz'
  ref: de9ce7475f3670e5662de8a3ad9002df918ab5ee94b4401e3ccb1d67f46d4919
