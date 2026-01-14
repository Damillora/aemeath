kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst

runtime-depends:
#- components/plasma/qqc2-breeze-style.bst
- components/plasma/xdg-desktop-portal-kde.bst
- components/deps/noto-fonts.bst
- freedesktop-sdk.bst:components/noto-emoji.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/kjobwidgets.bst
- components/kf6/kservice.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/qqc2-desktop-style.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_QT5=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-integration-%{plasma-version}.tar.xz'
  ref: ad5af85adc0772a1f9bcdcca51b1cbdda2ef2891b51c2b1b0a388a28521de3c5
