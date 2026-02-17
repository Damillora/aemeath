kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
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
- components/kf6/knotifications.bst
- components/kf6/krunner.bst
- components/kf6/kservice.bst
- components/kf6/kxmlgui.bst
- components/kf6/solid.bst
- components/plasma/libkscreen.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-activities.bst
- components/plasma/plasma-workspace.bst
- components/deps/qt6-qcoro.bst
- components/deps/power-profiles-daemon.bst
- components/deps/ddcutil.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/powerdevil-%{plasma-version}.tar.xz'
  ref: 5290db86ba546d9fc7ac468d4d7e68759a476bc7b9be8775ce0ddea2f4c2db4e
