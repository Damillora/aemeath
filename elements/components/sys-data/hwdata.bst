kind: autotools

build-depends:
- components/buildsystems/autotools.bst

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: v*
  exclude:
  - 'v*-*'
  ref: v0.409-0-g73fa04de426aefe192505fcbc6c24237a9fd9c9b
