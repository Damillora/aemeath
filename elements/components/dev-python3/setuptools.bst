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
  ref: v84.0.0-0-g72e919a8b10aaafc041205d4e3ae0e6a2e1e5f87
