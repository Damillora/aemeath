kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/dev-tools/sassc.bst

depends:
- components/util-libs/glib.bst
- components/gtk-toolkit/gtk3.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtsvg.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/kdecoration.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kde-gtk-config-%{plasma-track}.tar.xz'
  ref: 52eab1e9f71e0a92d542ee1cc655895ed4b999a9e394d468f4ef2c838f0c739b
