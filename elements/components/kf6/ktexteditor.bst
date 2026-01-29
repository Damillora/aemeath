kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/editorconfig-core-c.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtspeech.bst
- components/kf6/karchive.bst
- components/kf6/kauth.bst
- components/kf6/kconfig.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kparts.bst
- components/kf6/sonnet.bst
- components/kf6/syntax-highlighting.bst
- components/kf6/kcodecs.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kitemviews.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/ktexteditor.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.22.0-0-g8d720355fb9e7a6f4ea99f883b90ea36d275e857
