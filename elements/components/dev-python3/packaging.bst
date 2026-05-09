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
  ref: 26.2-0-g84a87ee42483d7352f9502d78a9553da8859aa7a
