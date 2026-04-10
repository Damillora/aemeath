kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/kwidgetsaddons.bst
- components/deps/appstream-qt.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/frameworkintegration.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-ge30525526ec05314ba459806cf674e83a7f9e109
