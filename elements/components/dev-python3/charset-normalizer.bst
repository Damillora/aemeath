kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst

depends:
- components/dev-lang/python3.bst

environment:
  CHARSET_NORMALIZER_USE_MYPYC: 0

sources:
- kind: git_repo
  url: github:jawah/charset_normalizer.git
  track: "*.*.*"
  exclude:
  - "*rc*"
  - "*b*"
  ref: 3.4.7-0-g0f07891bf516b5d5231f1bd4dd2d8da7d4d09a9a
- kind: patch
  path: patches/python3-charset-normalizer/drop-setuptools-constraint.patch
