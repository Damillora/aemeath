kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/frameworkintegration.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kservice.bst
#- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/oxygen-icons.bst
#- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/kdecoration.bst
- components/kde-plasma/libplasma.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_QT5=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/oxygen-%{plasma-track}.tar.xz'
  ref: 621f4de24bf8961f4d51a2a13e089de53a99b662fd2c41acd6c5b2f2fec31de8
