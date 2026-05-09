kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/kholidays.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kunitconversion.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/networkmanager-qt.bst
- components/kde-plasma/libksysguard.bst
- components/kde-plasma/plasma-activities.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma5support-%{plasma-track}.tar.xz'
  ref: 0670bf42990273fbe6049d136dbd60fd6536509d52955c3804899244b82638e3
