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
  ref: 3.3.3-0-gd90d38b283efaece7ac7cace7050ba55cb82abe5
