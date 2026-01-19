kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtspeech.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/sonnet.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/ktextwidgets.git
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-gcadbcf79438e217ff045a15ee9c5573437c4892c
