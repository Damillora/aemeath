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
  ref: v0.22.2-0-g6a2e12fdc30b521d11f781f986390525a54398bf
