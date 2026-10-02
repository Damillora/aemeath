kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst

depends:
- components/dev-lang/python3.bst

variables:
  build-args-local: "--skip-dependency-check"

environment:
  CHARSET_NORMALIZER_USE_MYPYC: 0

sources:
- kind: git_repo
  url: github:jawah/charset_normalizer.git
  track: "*.*.*"
  exclude:
  - "*rc*"
  - "*b*"
  ref: 3.5.2-0-g935c29ad2d0d6e62fcf3a6e0617c55dc6e85db8f
