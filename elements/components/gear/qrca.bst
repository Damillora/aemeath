kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtmultimedia.bst
- components/kf6/kconfig.bst
- components/kf6/kcontacts.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/networkmanager-qt.bst
- components/kf6/prison.bst
- components/deps/kirigami-addons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/qrca-%{gear-version}.tar.xz'
  ref: 477c8b83915a8e56e2fe7c1ea892cdb0d9283d6e9051030cc7ba9bd53ff073bc
