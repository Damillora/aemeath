kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  local_flags: -Wno-error=stringop-truncation

sources:
- kind: git_repo
  url: github:editorconfig/editorconfig-core-c.git
  track: 'v*'
  ref: v0.12.11-0-g0ba157eff167c1b2d1bc0c3e13975b7a73fb9d25
