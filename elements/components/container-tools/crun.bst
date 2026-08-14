kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gperf.bst

depends:
- components/sys-libs/systemd-libs.bst
- components/sys-libs/libcap.bst
- components/sys-libs/libseccomp.bst
- components/util-libs/json-c.bst

variables:
  conf-local: >-
    --enable-embedded-yajl

sources:
- kind: git_repo
  url: github:containers/crun.git
  track: '*.*'
  ref: 1.29.1-0-gf0d911de5587342cfeb16473bf32ecdfeaf25957
- kind: git_module
  path: libocispec
  url: github:containers/libocispec.git
  ref: 872b8b0b7ccb1a121601ede0dcac8c6b8a1008a6
- kind: git_module
  path: runtime-spec
  url: github:opencontainers/runtime-spec.git
  directory: libocispec
  ref: d64c1d945da7cf6970061c7c9ff4391fafdf2a15
- kind: git_module
  path: image-spec
  url: github:opencontainers/image-spec.git
  directory: libocispec
  ref: 26647a49f642c7d22a1cd3aa0a48e4650a542269
