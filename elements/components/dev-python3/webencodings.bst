kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst

depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:gsnedders/python-webencodings.git
  track: "*.*"
  ref: v0.5.1-0-gfa2cb5d75ab41e63ace691bc0825d3432ba7d694
