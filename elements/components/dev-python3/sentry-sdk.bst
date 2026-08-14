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
  ref: 2.68.0-0-gc819e660c623b41b881349a7c7b3d9d2b94b157a
