kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-tools/pkgconf.bst

depends:
- components/dev-lang/python3.bst


sources:
- kind: git_repo
  url: github:giampaolo/psutil.git
  track: 'release-*'
  ref: release-7.2.2-0-g9eea97dd6f1d16ea33f5144c8925f1ce7a0688e1
