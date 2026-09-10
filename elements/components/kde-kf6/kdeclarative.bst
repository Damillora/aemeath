kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtshadertools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kwidgetsaddons.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kdeclarative.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g4d73af0ab42af87a0b8a23c74f357ed8a7786526
