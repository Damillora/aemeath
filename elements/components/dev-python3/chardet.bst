kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/hatch-vcs.bst

depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:chardet/chardet.git
  track: "6.*.*"
  exclude:
  - "*post*"
  - "*rc*"
  ref: 6.0.0-0-g8a4636b1d4ef21d11cc8190f6ff271670b9d20ee
- kind: patch
  path: patches/python3-chardet/version.patch
