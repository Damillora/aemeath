kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/gcc.yml
- elements/sources/gcc-deps.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst

variables:
  prefix: "%{bootstrap-prefix}"
  build-dir: build
  conf-local: >-
    --target=%{bootstrap-triplet}
    --with-glibc-version=2.43
    --with-sysroot=%{bootstrap-sysroot}
    --with-newlib
    --without-headers
    --enable-default-pie
    --enable-default-ssp
    --disable-nls
    --disable-shared
    --disable-multilib
    --disable-threads
    --disable-libatomic
    --disable-libgomp
    --disable-libquadmath
    --disable-libssp
    --disable-libvtv
    --disable-libstdcxx
    --enable-deterministic-archives
    --enable-linker-build-id
    --enable-languages=c,c++

config:
  configure-commands:
    (<):
    - sed -e '/m64=/s/lib64/lib/' -i gcc/config/i386/t-linux64
  install-commands:
    (>):
    - cat gcc/limitx.h gcc/glimits.h gcc/limity.h > `dirname $(%{install-root}%{bindir}/%{bootstrap-triplet}-gcc -print-libgcc-file-name)`/include/limits.h