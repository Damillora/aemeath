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
  ref: rel_1_3_12-0-gd4d1639222d2da4f18c32d11f32c37f172f603bd
