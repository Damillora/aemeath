kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

sources:
- kind: pypi
  name: docutils
  ref:
    sha256sum: 746f5060322511280a1e50eb76846ed6bf2342984b2ac04dc42caa1a8d78799e
    suffix: 39/a4/5180d9afc57e8fca05601dd652bdff19604c218814037fe90ffc7625a50a/docutils-0.23.tar.gz
