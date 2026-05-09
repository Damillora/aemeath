kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/desktop-services/cups.bst
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:OpenPrinting/pycups.git
  track: "v*"
  ref: v2.0.4-0-gb323570087a10bf4ac399007d9e01e824fdafd80
