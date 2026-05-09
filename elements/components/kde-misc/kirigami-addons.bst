kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst
- components/qt6-toolkit/qtshadertools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/ksvg.bst
- components/kde-kf6/sonnet.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:libraries/kirigami-addons.git'
  track: 'v*'
  ref: v1.12.1-0-g6c80f4dfede60601e6fd1c3087143ed37ff4d757
