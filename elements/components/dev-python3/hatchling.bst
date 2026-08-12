kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-python3/editables.bst
- components/dev-python3/pathspec.bst
- components/dev-python3/packaging.bst
- components/dev-python3/pluggy.bst
- components/dev-python3/tomlkit.bst
- components/dev-python3/trove-classifiers.bst

variables:
  command-subdir: backend
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/hatch.git
  track: 'hatch-v*'
  ref: hatch-v1.18.0-0-g558061c5ecbe7e9b10d81965d4cdc8df05832228

