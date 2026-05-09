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
  ref: 2.7.0-0-g9a950b92d999f906b6020bb2d1076ee56cddd5d2
- kind: patch
  path: patches/python3-urllib3/version.patch
- kind: patch
  path: patches/python3-urllib3/setuptools_scm_version.patch
