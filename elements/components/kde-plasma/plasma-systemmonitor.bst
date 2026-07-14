kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/libksysguard.bst
- components/kde-plasma/ksystemstats.bst
- components/kde-misc/kirigami-addons.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-systemmonitor-%{plasma-track}.tar.xz'
  ref: 5c1190c61d20a254ce8f369de55a837df2ee33366e78124b015cbb3d62d1490c
