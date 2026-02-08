kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:OpenPrinting/pycups.git
  track: "v*"
  ref: v2.0.4-0-gb323570087a10bf4ac399007d9e01e824fdafd80
