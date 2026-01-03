kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/deps/editorconfig-core-c.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtspeech.bst
- components/kf6/karchive.bst
- components/kf6/kauth.bst
- components/kf6/kcodecs.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kitemviews.bst
- components/kf6/kparts.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kxmlgui.bst
- components/kf6/sonnet.bst
- components/kf6/syntax-highlighting.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/ktexteditor.git'
  track: 'v%{kf6-version}'
  ref: e7e89ffbfdd7dd8fee5d0c6fa70f69340d90418e
