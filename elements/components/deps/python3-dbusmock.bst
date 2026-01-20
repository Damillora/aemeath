kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:martinpitt/python-dbusmock.git
  track: "*.*"
  ref: 0.37.2-0-g1ce6196a687d324a55fbf1f74e0f66a4e83f7a15
