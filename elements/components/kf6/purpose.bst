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
- components/kf6/kdeclarative.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/prison.bst
- components/gear/kaccounts-integration.bst
- components/deps/accounts-qml-module.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/purpose.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gba506654f94733b34e349236e4600592e182aafb
