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
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DCMAKE_BUILD_TYPE=Release

sources:
- kind: git_repo
  url: 'kde:plasma/plasma-setup.git'
  track: master
  ref: v6.5.90-1-g1db6a7293e25bc8f8fad8c244e2423563a77bf20
- kind: patch_queue
  path: patches/plasma-setup
