kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/diffutils.yml

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
     gl_cv_func_strcasecmp_works=yes