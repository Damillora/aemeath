kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtspeech.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/sonnet.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/ktextwidgets.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g2ac06f386eb2bdbb2b9a5da091f59b24521ba755
