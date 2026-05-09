kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-static

config:
  configure-commands:
    (<):
    - sed -i '/func.s/s/s//' tests/Gtest-nomalloc.c

sources:
- kind: git_repo
  url: github:libunwind/libunwind.git
  track: v*
  ref: v1.8.3-0-g44aa1a5be2ca68825a17acdf534be4d25cff09b3
