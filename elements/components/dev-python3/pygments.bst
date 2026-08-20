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
  ref: 2.21.0-0-ga43b45dcf081b6010c6ab4428f149f7f6d2499c4
