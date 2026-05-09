kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/util-sys/which.bst

depends:
- components/util-libs/libplist.bst
- components/hw-libs/libimobiledevice-glue.bst

sources:
- kind: git_repo
  url: github:libimobiledevice/libusbmuxd.git
  track: "*.*"
  ref: 2.1.1-0-gadf9c22b9010490e4b55eaeb14731991db1c172c
