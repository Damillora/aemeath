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
  ref: 3.2.9-0-g58b8e6adc51c99c8cd5dd75db720e4aa7c051cb6
