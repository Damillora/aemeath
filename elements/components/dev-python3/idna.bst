kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:kjd/idna.git
  track: v*
  ref: v3.18-0-gf39ea903ba49eb5a0b2c6723c9a929b41ed4a0f1
