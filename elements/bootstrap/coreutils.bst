kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/coreutils.yml

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
     --build=$(./config.guess)
     --enable-install-program=hostname
     --enable-no-install-program=kill,uptime

environment:
  FORCE_UNSAFE_CONFIGURE: "1"