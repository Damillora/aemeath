kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/libplist.bst
- components/deps/libimobiledevice-glue.bst

sources:
- kind: git_repo
  url: github:libimobiledevice/libusbmuxd.git
  track: "*.*"
  ref: 2.1.1-0-gadf9c22b9010490e4b55eaeb14731991db1c172c
