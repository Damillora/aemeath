kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kitemviews.bst
- components/kf6/kjobwidgets.bst
- components/kf6/kservice.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/solid.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kio.git'
  track: 'v%{kf6-version}'
  ref: f6a5914bf1ad7e2535d095addc91dd7b85e80d53
