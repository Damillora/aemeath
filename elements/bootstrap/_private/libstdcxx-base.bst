kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/gcc.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst
- bootstrap/gcc-stage1.bst
- filename:
  - bootstrap/linux-api-headers.bst
  - bootstrap/glibc.bst
  config:
    location: "%{bootstrap-sysroot}"

variables:
  build-dir: build
  conf-cmd: '%{build-root}/libstdc++-v3/configure'
  gcc-version: $(%{bootstrap-triplet}-gcc -dumpversion)
  conf-local: >-
    --host=%{bootstrap-triplet}
    --build=$(../config.guess)
    --disable-multilib
    --disable-nls
    --disable-libstdcxx-pch
    --with-gxx-include-dir=%{bootstrap-prefix}/%{bootstrap-triplet}/include/c++/%{gcc-version}

public:
  bst:
    split-rules:
      headers:
        - '%{bootstrap-prefix}/**'
      libs:
        - '%{prefix}/**'