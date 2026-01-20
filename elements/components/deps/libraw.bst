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
  ref: 0.22.0-0-g0b56545a4f828743f28a4345cdfdd4c49f9f9a2a
