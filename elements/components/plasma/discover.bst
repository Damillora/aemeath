kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/fwupd.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
#- components/qt6/qtwebview.bst
- components/kf6/attica.bst
- components/kf6/karchive.bst
- components/kf6/kauth.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kidletime.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kuserfeedback.bst
- components/kf6/kxmlgui.bst
- components/kf6/purpose.bst
- components/deps/qt6-qcoro.bst
- components/deps/kirigami-addons.bst
- components/deps/appstream-qt.bst

runtime-depends:
- components/kf6/qqc2-desktop-style.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_SystemdSysupdateBackend=ON

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/discover-%{plasma-version}.tar.xz'
  ref: 54fbbbe8a63e2204ecde0df39a9cc500cc0fc202e1e317452f971a2d13295836
