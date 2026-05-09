kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:cpburnz/python-pathspec.git
  track: 'v*'
  ref: v1.1.1-0-gecf71a99ca739479d450b9830f43416ea0c519c7

