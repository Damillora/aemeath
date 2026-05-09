kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/ktextwidgets.bst
- components/kde-kf6/kwindowsystem.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/kdialog-%{gear-track}.tar.xz'
  ref: 527ecfd4a9af19078f55f5758977821dbcef47a1b496b1a1b680d681228ade6d
