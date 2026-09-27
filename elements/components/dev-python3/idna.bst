kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:kjd/idna.git
  track: v*
  ref: v3.20-0-gd55e65e1a3b1ede7f556bc202738066f5597e249
