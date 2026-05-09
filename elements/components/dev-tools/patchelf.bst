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
  ref: 0.18.0-0-g99c24238981b7b1084313aca8f5c493bb46f302c
