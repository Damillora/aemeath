kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:gsnedders/python-webencodings.git
  track: "*.*"
  ref: v0.5.1-0-gfa2cb5d75ab41e63ace691bc0825d3432ba7d694
