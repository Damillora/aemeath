kind: pyproject

build-depends:
- components/buildsystems/python.bst

runtime-depends:
- components/dev-tools/ninja.bst
- components/dev-lang/python3.bst
- components/dev-python3/packaging.bst

sources:
- kind: git_repo
  url: github:nodejs/gyp-next.git
  track: v*
  ref: v0.22.3-0-gf644b2d18ac49b30476ccbfb0d4f825a4f252b81
