kind: pyproject

build-depends:
- components/buildsystems/minimal.bst
- components/dev-python3/_private/bootstrap-build.bst
- components/dev-python3/flit-core.bst
- components/dev-python3/installer.bst

depends:
- components/dev-lang/python3.bst

runtime-depends:
- components/dev-python3/packaging.bst
- components/dev-python3/pyproject-hooks.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/build.git
  track: '*.*.*'
  ref: 1.5.1-0-gd08fcd723500a7d676867144e1e7a22b650aeb7d

