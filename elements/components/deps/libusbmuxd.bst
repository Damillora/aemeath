kind: autotools

sources:
- kind: tar
  url: github:libimobiledevice/libusbmuxd/releases/download/2.1.1/libusbmuxd-2.1.1.tar.bz2
  ref: 5546f1aba1c3d1812c2b47d976312d00547d1044b84b6a461323c621f396efce

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/libplist.bst
- components/deps/libimobiledevice.bst
