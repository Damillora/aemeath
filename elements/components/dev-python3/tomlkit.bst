kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst
- components/dev-python3/poetry-core.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:python-poetry/tomlkit.git
  track: '*.*.*'
  ref: 0.15.1-0-g1bd7e3bc5bcc957d359a6c4d8e420163f32ac009

