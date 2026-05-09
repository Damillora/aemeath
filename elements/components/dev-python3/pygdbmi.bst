kind: setuptools

build-depends:
- components/buildsystems/python.bst
- components/dev-tools/pkgconf.bst

depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:cs01/pygdbmi.git
  track: 'v*'
  ref: v0.11.0.0-0-g52a17f1d8651e941b8551a44a03d181d605e1e56
