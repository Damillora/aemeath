kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/systemd-libs.bst

sources:
- kind: git_repo
  url: aemeath_mirror:libatasmart.git
  track: v*
  ref: v0.19-0-gde6258940960443038b4c1651dfda3620075e870
