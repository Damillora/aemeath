kind: pyproject

build-depends:
- components/buildsystems/python.bst

runtime-depends:
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:cython/cython.git
  track: '*.*.*'
  exclude:
  - "*a*"
  - "*rc*"
  - "*b*"
  ref: 3.2.6-0-gf49dd246c3eaa9291089aa256e5e2752080ae9f0
