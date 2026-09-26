kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst
- components/dev-python3/markupsafe.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:Python-Markdown/markdown.git
  track: "*.*.*"
  ref: 3.11.0-0-g0ffbf00cf667971d46f43aafba825e8d25098bc5
