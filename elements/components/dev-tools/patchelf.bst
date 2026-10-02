kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:NixOS/patchelf.git
  track: '*.*.*'
  ref: 0.19.2-0-g382d8bc12db9e720515da49d9c272ef4a622c3c0
