kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:zint/zint
  track: '*.*'
  exclude:
  - '*rc*'
  ref: 2.16.0-0-g55541e139e62b9209b71cd9b0ba9010cec28b1d9
