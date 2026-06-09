kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-urllib3.bst

sources:
- kind: git_repo
  url: github:getsentry/sentry-python.git
  track: '2.*'
  ref: 2.62.0-0-g0bac65a1c046e6eb7125d6413c29a188144e875b
