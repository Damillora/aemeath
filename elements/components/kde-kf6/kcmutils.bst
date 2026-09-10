kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kitemviews.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kirigami.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kcmutils.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g59fcbdae35cd4974818c6861c30c88962f2fea14
