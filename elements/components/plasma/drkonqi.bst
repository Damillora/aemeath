kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3-pip.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/plasma-wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

#runtime-depends:
#- components/plasma/qqc2-breeze-style.bst
#- components/plasma/xdg-desktop-portal-kde.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/ki18n.bst
- components/kf6/kidletime.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/syntax-highlighting.bst
- components/deps/qt6-polkit-qt.bst
- components/deps/python3-psutil.bst
- components/deps/python3-pygdbmi.bst
- components/deps/python3-sentry-sdk.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DWITH_PYTHON_VENDORING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/drkonqi-%{plasma-version}.tar.xz'
  ref: ecca37aa6fda3a9719c4efda7a0d3aeac153c0e7d0baf52f2764830d24a5e3ed
