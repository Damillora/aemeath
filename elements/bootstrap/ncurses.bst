kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/ncurses.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst
- bootstrap/gcc-stage1.bst
- bootstrap/libstdcxx-headers.bst
- filename:
  - bootstrap/linux-api-headers.bst
  - bootstrap/glibc.bst
  - bootstrap/libstdcxx-libs.bst
  config:
    location: "%{bootstrap-sysroot}"

runtime-depends:
- bootstrap/glibc.bst
- bootstrap/libstdcxx-libs.bst

variables:
   conf-local: >-
     --host=%{bootstrap-triplet}
     --build=$(./config.guess)
     --with-manpage-format=normal
     --with-shared
     --without-normal
     --with-cxx-shared
     --without-debug
     --without-ada
     --disable-stripping
     AWK=gawk

config:
  install-commands:
    (>):
    - ln -sv libncursesw.so %{install-root}%{libdir}/libncurses.so
    - sed -e 's/^#if.*XOPEN.*$/#if 1/' -i %{install-root}%{includedir}/curses.h