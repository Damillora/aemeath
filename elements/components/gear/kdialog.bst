kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/knotifications.bst
- components/kf6/ktextwidgets.bst
- components/kf6/kwindowsystem.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-version}/src/kdialog-%{gear-version}.tar.xz'
  ref: 527ecfd4a9af19078f55f5758977821dbcef47a1b496b1a1b680d681228ade6d
