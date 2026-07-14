kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-plasma/kpipewire.bst
- components/net-libs/freerdp.bst
- components/kde-misc/kirigami-addons.bst
- components/kde-misc/plasma-wayland-protocols.bst
- components/qt6-libs/qtkeychain.bst
variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/krdp-%{plasma-track}.tar.xz'
  ref: 4d8019b00b20e91e84f34da0d53cbcc2b1ae5a57a1f437a426c6735fcfa414d0
