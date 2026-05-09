kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/util-sys/which.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/security-libs/nettle.bst

sources:
- kind: git_repo
  url: github:pauldreik/rdfind.git
  track: "*.*.*"
  ref: releases/1.8.0-0-g994638b1ca7813d633fc749136605a9d38728b59
