kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst


sources:
- kind: git_repo
  url: github:certifi/python-certifi.git
  track: "*.*.*"
  ref: 2026.06.17-0-gd0ac52f3d93a514224197c7efb66c41b1beae5d1
