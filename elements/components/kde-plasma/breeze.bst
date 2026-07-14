kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtsvg.bst
- components/kde-kf6/frameworkintegration.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/kdecoration.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_QT5=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/breeze-%{plasma-track}.tar.xz'
  ref: d853fc45a43e64ee6d901860b19e78a50c8a03cfe9127f2a5781d50f13ffe838
