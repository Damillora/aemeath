kind: pyproject

build-depends:
- components/buildsystems/python.bst
depends:
- components/dev-lang/python3.bst


sources:
- kind: git_repo
  url: github:erocarrera/pefile.git
  track: v*
  ref: v2024.8.26-0-g4b3b1e2e568a88d4f1897d694d684f23d9e270c4
