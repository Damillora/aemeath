kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/dev-lang/python3.bst

config:
  build-commands:
    (<):
    - |
      echo "Version: $(git describe --tags)" > PKG-INFO

sources:
- kind: git_repo
  url: github:di/calver.git
  track: '*.*.*'
  ref: 2025.10.20-0-g36c6977d6e2d9b9912c2afb83b4e36bb1289dbdd
