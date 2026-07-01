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
  ref: 3.2.8-0-gfee6fd61250fa0df1ff2ff9cd7f6f50d203391f8
