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
  ref: 64a3ecf3854a1feb473b9e490d7c56c155148b39d095a2e0ecfeaa5c0686ce36
