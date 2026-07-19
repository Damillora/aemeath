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
  ref: v83.0.0-0-g6519f728c6f23c992df81a5691ef7655184a20eb
