kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/ki18n.bst
- components/deps/perl-uri.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxslt.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DDocBookXSL_DIR=/usr/share/xml/docbook/xml/xsl-stylesheets/
    -DDTD_PATH_LIST=/usr/share/xml/docbook/xml-dtd/4.5/

sources:
- kind: git_repo
  url: kde:frameworks/kdoctools.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.22.0-0-g262b458d03474e9160afa17baf7186848891b122
