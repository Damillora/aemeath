kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

#runtime-depends:
#- components/plasma/qqc2-breeze-style.bst
#- components/plasma/xdg-desktop-portal-kde.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemviews.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kwindowsystem.bst
- components/plasma/kpipewire.bst
- components/plasma/kwayland.bst
- components/deps/kirigami-addons.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/xdg-desktop-portal-kde-%{plasma-version}.tar.xz'
  ref: a287f1867a05b39a226285f010fb225742e765831cb81cbc1ea8820359f8cd29
