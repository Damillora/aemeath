kind: autotools

(@):
- elements/sources/ncurses.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
   conf-local: >-
     --with-shared
     --without-debug
     --without-normal
     --with-cxx-shared
     --enable-pc-files
     --with-pkg-config-libdir=%{libdir}/pkgconfig

config:
  install-commands:
    (>):
    - sed -e 's/^#if.*XOPEN.*$/#if 1/' -i %{install-root}%{includedir}/curses.h
    - |
      for lib in ncurses form panel menu ; do
          ln -sfv lib${lib}w.so %{install-root}%{libdir}/lib${lib}.so
          ln -sfv ${lib}w.pc    %{install-root}%{libdir}/pkgconfig/${lib}.pc
      done