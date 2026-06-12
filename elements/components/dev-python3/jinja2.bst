kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst
- components/dev-python3/markupsafe.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pallets/jinja.git
  track: "*.*.*"
  exclude:
  - "*.*.x"
  ref: 3.1.6-0-g15206881c006c79667fe5154fe80c01c65410679
