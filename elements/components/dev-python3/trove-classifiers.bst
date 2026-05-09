kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/calver.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/trove-classifiers.git
  track: '*.*.*'
  ref: 2026.6.1.19-0-g71cb041f383cee31668d07e3302d2b09d10471a8

