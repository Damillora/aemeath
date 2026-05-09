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
  ref: 2.63.0-0-g44b008a336bd9c64bf54ab8318bffbf9cc015bd1
