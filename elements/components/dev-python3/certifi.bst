kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst


sources:
- kind: git_repo
  url: github:certifi/python-certifi.git
  track: "*.*.*"
  ref: 2026.07.22-0-gf4bc676bc101fe2235846e37044e8c693d6cbaf4
