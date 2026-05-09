kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-python3/setuptools-scm.bst
- components/dev-tools/pkgconf.bst

depends:
- components/dev-lang/python3.bst
- components/dev-python3/dbus.bst

sources:
- kind: git_repo
  url: github:martinpitt/python-dbusmock.git
  track: "*.*"
  ref: 0.38.1-0-gee00606c4a57d83028ae2df71d47f6bda07741f8
