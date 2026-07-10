kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/sys-data/iso-codes.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/dev-tools/gettext.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/ki18n.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.28.0-0-gf7356ac9b6eaa53460f0471b9c1dba744ddc0cd8
