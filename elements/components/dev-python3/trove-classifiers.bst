kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/calver.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/trove-classifiers.git
  track: '*.*.*'
  ref: 2026.9.21.13-0-gbc832553ebe6114e7682f09bc59bda6552da37cd

