kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:eliben/pyelftools
  track: 'v*.*'
  ref: v0.32-0-gd4ea35fc3c34eb0e4d3f8cfafb31552f5b5c37d6
