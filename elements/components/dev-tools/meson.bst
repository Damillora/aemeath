kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst
- components/dev-tools/ninja.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:mesonbuild/meson.git
  track: '*.*.*'
  exclude:
  - '*rc*'
  ref: 1.11.1-0-g69b3094f84afcf3758cc74b2f547ca34d8fd1621

