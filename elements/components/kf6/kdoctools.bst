kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/kf6/ki18n.bst
- components/deps/perl-uri.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- components/kf6/karchive.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DDocBookXSL_DIR=/usr/share/xml/docbook/xml/xsl-stylesheets/ \
    -DDTD_PATH_LIST=/usr/share/xml/docbook/xml-dtd/4.5/

sources:
- kind: git_repo
  url: 'kde:frameworks/kdoctools.git'
  track: 'v%{kf6-version}'
  ref: 5b8ccc7bb5f5e0605d8e6c112c17f793835e8de1
