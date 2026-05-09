kind: make

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/zstd.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst
- bootstrap/gcc-stage1.bst
- filename:
  - bootstrap/linux-api-headers.bst
  - bootstrap/glibc.bst
  config:
    location: "%{bootstrap-sysroot}"

runtime-depends:
- bootstrap/glibc.bst