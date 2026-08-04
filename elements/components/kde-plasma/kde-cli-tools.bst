kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtsvg.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kdesu.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kde-cli-tools-%{plasma-track}.tar.xz'
  ref: 9b93730cbea9eecd2b17c84603c1496d18d08749d2861f87a7552f463d7aecb0
