kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- components/deps/plasma-wayland-protocols.bst

#runtime-depends:
#- components/deps/power-profiles-daemon.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kglobalaccel.bst
- components/kf6/ki18n.bst
- components/kf6/kidletime.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/kxmlgui.bst
- components/plasma/libkscreen.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-activities.bst
- components/plasma/plasma-workspace.bst
- components/deps/qt6-qcoro.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_QT5=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/powerdevil-%{plasma-version}.tar.xz'
  ref: 99e427b7576b1930bb40a358419f9bac36e3b59f91ff7d1c4c73bb6c58033e1a
