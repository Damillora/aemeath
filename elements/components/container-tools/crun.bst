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
  ref: 1.28-0-g54f16ffbefcd022bf032af768b5c5ce075c18bfc
- kind: git_module
  path: libocispec
  url: github:containers/libocispec.git
  ref: 8034d0ecd27f646ba3ffae5ff24db234ce062825
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
