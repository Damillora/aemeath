kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:eliben/pyelftools
  track: 'v*.*'
  ref: v0.33-0-g52ce435186022bd6b32012a998931fe86c985ec8
