kind: pyproject

build-depends:
- components/buildsystems/python.bst

runtime-depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:cython/cython.git
  track: '*.*.*'
  exclude:
  - "*a*"
  - "*rc*"
  - "*b*"
  ref: 3.3.0-0-gbcd04a2966842d80de6ecff4e68e8d892bec5ef7
