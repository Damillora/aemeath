kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pfmoore/editables
  track: '*.*'
  ref: 0.6-0-g6bb75a27a5177825e4e178a8f02421802c654b40

