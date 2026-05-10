kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/make.yml

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

variables:
   conf-local: >-
     --host=%{bootstrap-triplet}
     --build=$(build-aux/config.guess)