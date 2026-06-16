kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/kservice.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/solid.bst
- components/kf6/networkmanager-qt.bst
- components/plasma/libksysguard.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-activities.bst
# TODO: gocryptfs

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/plasma-vault-%{plasma-version}.tar.xz'
  ref: 8bd70b3d378789d396a66e693a809dd6b21edc48166275932f7f7d02074fce1c
