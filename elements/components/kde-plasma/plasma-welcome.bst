kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qt5compat.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/kuserfeedback.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/libplasma.bst
- components/kde-misc/kirigami-addons.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-welcome-%{plasma-track}.tar.xz'
  ref: fd03a6e29912e795904c9ffb3835fa881f591935194ad71d24501432de96bab0
