kind: pyproject

build-depends:
- components/buildsystems/minimal.bst
- components/dev-python3/_private/bootstrap-build.bst
- components/dev-python3/_private/bootstrap-installer.bst
- components/dev-python3/flit-core.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/installer.git
  track: '*.*.*'
  ref: 1.0.1-0-g7ffa96f4ada5f38792e340ba7f9e1c43e0104768
