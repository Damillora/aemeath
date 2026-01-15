kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtvirtualkeyboard.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/deps/kirigami-addons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DDBUS_CONFIG_FILENAME=plasma_org.freedesktop.DisplayManager.conf \
    -DPAM_OS_CONFIGURATION=aemeath

sources:
- kind: git_repo
  url: 'kde:plasma/plasma-keyboard.git'
  ref: db805131a89346ec1b8c98f2970730f8e3159974
