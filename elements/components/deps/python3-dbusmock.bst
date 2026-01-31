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
  ref: 0.38.1-0-gee00606c4a57d83028ae2df71d47f6bda07741f8
