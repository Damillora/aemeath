kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-tools/pkgconf.bst

depends:
- components/dev-lang/python3.bst
- components/dev-python3/six.bst
- components/dev-python3/webencodings.bst

sources:
- kind: git_repo
  url: github:html5lib/html5lib-PYTHON.git
  track: "*.*"
  ref: 1.1-0-gf87487a4ada2d6cf223bdd182774a01ba3c84618
