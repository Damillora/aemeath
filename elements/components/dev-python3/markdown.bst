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
  ref: 3.10.2-0-ge7a0efb3a7c36d6b8005403122705662bc17c904
