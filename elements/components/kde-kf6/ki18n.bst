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
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/ki18n.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-gdd9a8bed3ca7770d8a92815f83abebeaf6fc54d3
