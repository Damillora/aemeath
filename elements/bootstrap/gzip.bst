kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/gzip.yml

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

config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"