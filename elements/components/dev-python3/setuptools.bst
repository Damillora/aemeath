kind: pyproject

build-depends:
- components/buildsystems/minimal.bst
- components/dev-python3/build.bst
- components/dev-python3/installer.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/setuptools.git
  track: v*
  ref: v82.0.1-0-g5a13876673a41e3cd21d4d6e587f53d0fb4fd8e5
