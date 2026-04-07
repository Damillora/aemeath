kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/jpeg.bst

sources:
- kind: git_repo
  url: github:LibRaw/LibRaw.git
  track: 0.*
  exclude:
  - "*b"
  ref: 0.22.1-0-gb860248a89d9082b8e0a1e202e516f46af9adb29
