kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kjobwidgets.bst
- components/kf6/kservice.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kparts.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-gf8f596fab1b37fa63ead662ba08fc99ba342c309
