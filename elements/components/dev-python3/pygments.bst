kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/hatchling.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pygments/pygments.git
  track: "*.*"
  ref: 2.20.0-0-g708197d82827ba2d5ca78bcbb653c7102ce86dcd
