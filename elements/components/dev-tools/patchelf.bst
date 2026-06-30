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
  ref: 0.19.0-0-g1e279e99b952c765824fa0401abb8dc0d944e4ea
