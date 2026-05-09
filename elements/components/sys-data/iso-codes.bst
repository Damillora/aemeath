kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: salsa:iso-codes-team/iso-codes.git
  track: v*
  ref: v4.20.1-0-g74623235ae99f6e835e1e465017ce4c544ae6b53
