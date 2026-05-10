kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/gcc.yml
- elements/sources/gcc-deps.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst
- bootstrap/gcc-stage1.bst
- bootstrap/libstdcxx-headers.bst
- filename:
  - bootstrap/linux-api-headers.bst
  - bootstrap/glibc.bst
  - bootstrap/libstdcxx-libs.bst
  - bootstrap/binutils-stage2.bst
  config:
    location: "%{bootstrap-sysroot}"

runtime-depends:
- bootstrap/glibc.bst
- bootstrap/libstdcxx-libs.bst
- bootstrap/binutils-stage2.bst

variables:
  build-dir: build
  conf-local: >-
    --build=$(../config.guess)
    --host=%{bootstrap-triplet}
    --target=%{bootstrap-triplet}
    --with-build-sysroot=%{bootstrap-sysroot}
    --enable-default-pie
    --enable-default-ssp
    --disable-nls
    --disable-multilib
    --disable-libatomic
    --disable-libgomp
    --disable-libquadmath
    --disable-libsanitizer
    --disable-libssp
    --disable-libvtv
    --enable-deterministic-archives
    --enable-linker-build-id
    --enable-languages=c,c++
    LDFLAGS_FOR_TARGET=-L$PWD/%{bootstrap-triplet}/libgcc

config:
  configure-commands:
    (<):
    - sed -e '/m64=/s/lib64/lib/' -i gcc/config/i386/t-linux64
    - sed '/thread_header =/s/@.*@/gthr-posix.h/' -i libgcc/Makefile.in libstdc++-v3/include/Makefile.in
  install-commands:
    (>):
    - ln -sv gcc %{install-root}%{bindir}/cc