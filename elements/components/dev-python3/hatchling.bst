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
  ref: hatch-v1.18.1-0-g4b17561f822b1b416403a61855374892ecbe11de

