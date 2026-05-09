kind: pyproject

build-depends:
- components/buildsystems/python.bst

runtime-depends:
- components/dev-lang/python3.bst
- components/dev-python3/urllib3.bst
- components/dev-python3/certifi.bst
- components/dev-python3/idna.bst
- components/dev-python3/chardet.bst
- components/dev-python3/charset-normalizer.bst

sources:
- kind: git_repo
  url: github:psf/requests.git
  track: v*
  exclude:
  - "*dev*"
  ref: v2.34.2-0-g6e83187b8feb273ed4c6cdab5efd8d54901dfab3
