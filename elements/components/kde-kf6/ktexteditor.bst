kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/util-libs/editorconfig-core-c.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtspeech.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/sonnet.bst
- components/kde-kf6/syntax-highlighting.bst
- components/kde-kf6/kcodecs.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kitemviews.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/ktexteditor.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gf31aabb85df62431fc66ffbde11216302c185d53
