kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-tools/pkgconf.bst

depends:
- components/dev-lang/python3.bst
- components/dev-python3/urllib3.bst

sources:
- kind: git_repo
  url: github:getsentry/sentry-python.git
  track: '2.*'
  ref: 2.68.1-0-g98f7d91809e71ed5a7b827f8b4f9acfc7ac1bae0
