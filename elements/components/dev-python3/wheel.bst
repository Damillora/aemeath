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
  ref: 0.47.0-0-gefd83a750f07a33462ea2eed365fd8dac9e51442

