kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtsvg.bst
- components/kf6/frameworkintegration.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kirigami.bst
- components/kf6/kwindowsystem.bst
- components/plasma/kdecoration.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_QT5=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/breeze-%{plasma-version}.tar.xz'
  ref: 162594cb74d2e6c033d08b45fc52904b488f232097c7aa025d837bf1e7fa38e8
