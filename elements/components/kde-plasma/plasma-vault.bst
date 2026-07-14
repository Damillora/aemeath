kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/filesystem-libs/fuse3.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/networkmanager-qt.bst
- components/kde-plasma/libksysguard.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma-activities.bst
# TODO: gocryptfs

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-vault-%{plasma-track}.tar.xz'
  ref: 8c5d91ad776cee1ef1eca2fb39b5da82d129567b46d2494c3171e17a3e923a27
