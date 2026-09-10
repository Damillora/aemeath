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
  ref: 2.69.1-0-gbd30ffb8b6371eb91b1b315d88d1ec3e95cd6725
