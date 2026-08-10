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
  url: github:sqlalchemy/mako.git
  track: "rel_*"
  ref: rel_1_4_1-0-g79dcdf847284b3a79e25bd3795621ce58f9e3439
