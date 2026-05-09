kind: pyproject

build-depends:
- components/buildsystems/minimal.bst
- components/dev-python3/_private/bootstrap-build.bst
- components/dev-python3/_private/bootstrap-installer.bst

depends:
- components/dev-lang/python3.bst

variables:
  command-subdir: flit_core
  strip-binaries: ''

sources:
- kind: git_repo
  url: github:pypa/flit.git
  track: '3.*.*'
  ref: 3.12.0-0-g1c8141722066ffe1497e511982feeea0f091ddb6
