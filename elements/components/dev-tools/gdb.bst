kind: autotools

(@):
- elements/sources/gdb.yml

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/perl.bst
- components/dev-tools/texinfo.bst
- components/util-archive/gzip.bst

depends:
- components/dev-lang/python3.bst
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
- components/sys-devel/gmp.bst
- components/sys-devel/mpfr.bst

variables:
  build-dir: "build"
  conf-local: >-
    --disable-binutils
    --disable-ld
    --disable-gas
    --disable-sim
    --disable-gprof
    --disable-gprofng
    --disable-libctf
    --disable-install-libiberty
    --with-system-readline
    --with-system-zlib
    --with-zstd
    --with-separate-debug-dir="%{debugdir}"

config:
  install-commands:
  - |
    cd %{build-dir}
    make -C gdb -j1 DESTDIR="%{install-root}" install
  - rm "%{install-root}/usr/share/info/dir"
