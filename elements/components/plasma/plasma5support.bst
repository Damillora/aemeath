kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/kholidays.bst
- components/kf6/ki18n.bst
- components/kf6/kidletime.bst
- components/kf6/kio.bst
- components/kf6/kjobwidgets.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/kunitconversion.bst
- components/kf6/solid.bst
- components/kf6/networkmanager-qt.bst
- components/plasma/libksysguard.bst
- components/plasma/plasma-activities.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/plasma5support-%{plasma-version}.tar.xz'
  ref: e60e1e47a3dee93518647d66393c21e2406f7779e9e9e4382d7cea68cebbfb7b
