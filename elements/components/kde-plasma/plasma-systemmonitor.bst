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
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-systemmonitor-%{plasma-track}.tar.xz'
  ref: bb876e2b7e2e9450e4207438d2564282d28514d48b9e1f16534099821f3b72fb
