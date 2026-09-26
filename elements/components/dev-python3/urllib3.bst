kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/hatch-vcs.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:urllib3/urllib3.git
  track: '*.*.*'
  exclude:
  - '*a*'
  - '*b*'
  - '*rc*'
  ref: 2.8.0-0-gb1d30ab61fe0db8f11092805e8c5ac43e091064a
- kind: patch
  path: patches/python3-urllib3/version.patch
- kind: patch
  path: patches/python3-urllib3/setuptools_scm_version.patch
