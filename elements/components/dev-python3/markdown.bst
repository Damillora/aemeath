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
  ref: 3.10.3-0-gbb50627dc07fde6ee5ed7478464062c537ebad2c
