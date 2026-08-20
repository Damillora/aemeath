kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst

variables:
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:kjd/idna.git
  track: v*
  ref: v3.19-0-g03a9a11dd8aecd4fea742cabe20f4d3d9ed82abb
