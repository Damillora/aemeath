kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/util-libs/glib.bst
- components/media-libs/libpulse.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/ksvg.bst
- components/kde-plasma/libplasma.bst
- components/kde-misc/kirigami-addons.bst
- components/desktop-libs/libcanberra.bst
- components/qt6-libs/pulseaudio-qt.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-pa-%{plasma-track}.tar.xz'
  ref: c97e985d37494c3617afcbe1d43e039de0068ed53e237083f27dc046e20d1665
