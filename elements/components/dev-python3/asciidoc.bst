kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/util-sys/findutils.bst

depends:
- components/dev-lang/python3.bst

runtime-depends:
- components/util-libs/libxslt.bst
- components/dev-tools/docbook-xsl.bst

sources:
- kind: git_repo
  url: github:asciidoc-py/asciidoc-py.git
  track: "*.*.*"
  ref: 10.2.1-0-g21e33efe96ba9a51d99d1150691dae750afd6ed1
