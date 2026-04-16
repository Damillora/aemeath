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
  url: 'kde_stable:release-service/%{gear-version}/src/kdialog-%{gear-version}.tar.xz'
  ref: cd612d72c629a5eab5dd2b6385e93e0926df39a6874ece0cf989d345d3aa225f
