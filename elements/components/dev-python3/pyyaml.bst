kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/cython.bst

depends:
- components/dev-lang/python3.bst
- components/util-libs/libyaml.bst

sources:
- kind: git_repo
  url: github:yaml/pyyaml.git
  track: '*.*.*'
  exclude:
  - "*rc*"
  - "*b*"
  ref: 6.0.3-0-g49790e73684bebad1df05ef8d828fa12f685bffb
