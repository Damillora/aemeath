kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kio.bst
- components/kf6/kitemviews.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kxmlgui.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kirigami.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kcmutils.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g1ffa3b5e5f9de44bb49c8c6a17664c43ee46431d
