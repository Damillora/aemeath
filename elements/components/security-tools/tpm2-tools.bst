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
  ref: 5.6.1-0-g6ea98b5a6ae129bc7c614508a5529dca15df4c21
- kind: patch_queue
  path: patches/tpm2-tools

