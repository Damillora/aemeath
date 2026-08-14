kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/ki18n.bst
- components/dev-perl/uri.bst

depends:
- components/dev-tools/docbook-xml4.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/libxml2.bst
- components/util-libs/libxslt.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kdoctools.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.29.0-0-g715981e5ea1206d2a1bc0869c45146ffe8680efa
