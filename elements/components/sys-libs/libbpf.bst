kind: make

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/libelf.bst
- components/sys-libs/zlib-ng.bst

variables:
  command-subdir: src
  make-args: >-
    PREFIX="%{prefix}"
    LIBDIR="%{libdir}"

sources:
- kind: git_repo
  url: github:libbpf/libbpf.git
  track: v*
  ref: v1.7.0-0-gf5dcbae736e5d7f83a35718e01be1a8e3010fa39
