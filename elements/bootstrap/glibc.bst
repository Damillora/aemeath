kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/glibc.yml

build-depends:
- binary-seed.bst
- bootstrap/gcc-stage1.bst
- bootstrap/binutils-stage1.bst
- filename: bootstrap/linux-api-headers.bst
  config:
    location: "%{bootstrap-sysroot}"

variables:
  build-dir: build
  conf-local: >-
    --with-headers=%{bootstrap-sysroot}%{includedir}
    --host=%{bootstrap-triplet}
    --build=$(../scripts/config.guess)
    --disable-nscd
    libc_cv_slibdir=/usr/lib
    --enable-kernel=6.0

config:
  configure-commands:
    (<):
    - echo "rootsbindir=/usr/sbin" > configparms