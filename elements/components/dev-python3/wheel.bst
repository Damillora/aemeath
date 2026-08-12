kind: pyproject

build-depends:
- components/buildsystems/minimal.bst
- components/dev-python3/build.bst
- components/dev-python3/flit-core.bst
- components/dev-python3/installer.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/wheel.git
  track: '*.*.*'
  ref: 0.48.0-0-g21c4da4c54c3b354cc22dc7f6f6374ffcd560e84

