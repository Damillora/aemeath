kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
- components/deps/python3-six.bst
- components/deps/python3-webencodings.bst

sources:
- kind: git_repo
  url: github:html5lib/html5lib-PYTHON.git
  track: "*.*"
  ref: 1.1-0-gf87487a4ada2d6cf223bdd182774a01ba3c84618
