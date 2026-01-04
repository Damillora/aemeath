kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/sassc.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/kwindowsystem.bst
- components/plasma/kdecoration.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_QT5=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kde-gtk-config-%{plasma-version}.tar.xz'
  ref: 3747496c47691adb09116b1b85587a7a44015b25129c8a04fa6a2a1faded24a8
