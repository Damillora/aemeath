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
  ref: v6.28.0-0-gcbb264b9815eaa4f378a20c99476c85c48746b09
