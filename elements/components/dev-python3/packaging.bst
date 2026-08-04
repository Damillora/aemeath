kind: pyproject

build-depends:
- components/buildsystems/minimal.bst
- components/dev-python3/_private/bootstrap-build.bst
- components/dev-python3/flit-core.bst
- components/dev-python3/installer.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/packaging.git
  track: '*.*'
  exclude:
  - "*rc*"
  ref: 26.3-0-g929fd4b1410ac7ef61ef3f45b2f5d7e87711a9b5
