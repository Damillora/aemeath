kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/util-libs/libxml2.bst
- components/util-libs/libxslt.bst
- components/util-sys/util-linux.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kbookmarks.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kitemviews.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwallet.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/kded.bst

runtime-depends:
- components/hw-tools/switcheroo-control.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kio.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-ga21899378dae244ff73da5bc8cfed8adb332fa2d
