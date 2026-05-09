kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/dev-tools/docbook-xml4.bst
- components/util-libs/libxml2.bst
- components/dev-lang/python3.bst

variables:
  conf-local: PYTHON="/usr/bin/python3"

sources:
- kind: git_repo
  url: github:itstool/itstool.git
  track: '*.*.*'
  ref: 2.0.7-0-gf1c6544dcd83a73a5ccea9e0c48cf9a47e006190

