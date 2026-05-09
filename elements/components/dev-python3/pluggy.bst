kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pytest-dev/pluggy.git
  track: '*.*.*'
  ref: 1.6.0-0-gfd08ab5f811a9b2fa9124ae8cbbd393221151e2c

