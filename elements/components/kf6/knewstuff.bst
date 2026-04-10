kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/attica.bst
- components/kf6/karchive.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kpackage.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/syndication.bst

runtime-depends:
- components/kf6/kirigami.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/knewstuff.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-gf7c6d392e06aad8a32de6c4b5c5ff75a2ecb62bc
