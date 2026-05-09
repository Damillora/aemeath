kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-python3/editables.bst
- components/dev-python3/pathspec.bst
- components/dev-python3/packaging.bst
- components/dev-python3/pluggy.bst
- components/dev-python3/trove-classifiers.bst

variables:
  command-subdir: backend
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/hatch.git
  track: 'hatch-v*'
  ref: hatch-v1.17.0-0-g37b00c3d2221438fa79084b92e81ee1819d6c630

