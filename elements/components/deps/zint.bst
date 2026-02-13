kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:zint/zint
  track: '*.*'
  exclude:
  - '*rc*'
  ref: 2.16.0-0-g55541e139e62b9209b71cd9b0ba9010cec28b1d9
