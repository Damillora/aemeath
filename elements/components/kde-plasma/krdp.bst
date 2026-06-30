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
  ref: 58c0cd6af601a37118999c3e0cabde25715521cbdd915244bf806b8439392659
