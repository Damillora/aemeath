kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/util-sys/findutils.bst

depends:
- components/dev-lang/python3.bst

config:
  install-commands:
    (>):
    - find %{install-root} -name '*.c' -delete

sources:
- kind: git_repo
  url: github:pallets/markupsafe.git
  track: "*.*.*"
  exclude:
  - "*.*.x"
  ref: 3.0.4-0-g9dd22e9e794c0010b752942814b9ee3ae4035590
