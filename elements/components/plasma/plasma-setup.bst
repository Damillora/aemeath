kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtsvg.bst
- components/kf6/kauth.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kpackage.bst
- components/plasma/libkscreen.bst
- components/plasma/plasma-desktop.bst
- components/plasma/plasma-workspace.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_BUILD_TYPE=Release

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-setup-%{plasma-version}.tar.xz'
  ref: f837d0c8bca66119f8c7ed935e3dcc03dd6ec72b3276d6c16e99728bb9cc104e
