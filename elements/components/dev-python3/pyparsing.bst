kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pyparsing/pyparsing.git
  track: "*.*.*"
  exclude:
  - "*a*"
  - "*b*"
  - "*rc*"
  - "*docs*"
  ref: 3.3.2-0-gfa24016d953353f8ba566abb5c8fc12e1d07556c
