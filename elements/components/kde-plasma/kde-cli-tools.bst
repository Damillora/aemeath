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
  ref: f2ef2df829b56365e864eecc8d5040d9b2583adb8fe673234f83f581d89089f1
