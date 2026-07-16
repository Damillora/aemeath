kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/autoconf-archive.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/security-tools/tpm2-tss.bst

variables:
  cflags-local: -Wno-error

sources:
- kind: git_repo
  url: github:tpm2-software/tpm2-tools.git
  track: '*.*.*'
  exclude:
  - '*rc*'
  ref: 5.7.1-0-g3dab6b23c1f6f4fbaa2aa87a749be46445aae17c
- kind: patch_queue
  path: patches/tpm2-tools

