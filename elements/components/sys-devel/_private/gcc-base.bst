kind: autotools

(@):
- elements/sources/gcc.yml

build-depends:
- bootstrap/platforms/autotools.bst
- bootstrap/gcc-stage2.bst
- bootstrap/gettext-tools.bst
- bootstrap/texinfo.bst
- bootstrap/tar.bst

depends:
- components/sys-devel/binutils.bst
- components/sys-devel/gmp.bst
- components/sys-devel/mpfr.bst
- components/sys-devel/mpc.bst
- components/sys-devel/flex.bst
- components/sys-libs/glibc.bst
- components/sys-libs/zlib-ng.bst
- components/dev-tools/pkgconf.bst
- components/util-archive/zstd.bst

variables:
  build-dir: build
  conf-local: >-
    LD=ld
    --enable-default-pie
    --enable-default-ssp
    --enable-host-pie
    --disable-multilib
    --disable-bootstrap
    --disable-fixincludes
    --enable-deterministic-archives
    --with-system-zlib
    --enable-languages=c,c++

config:
  configure-commands:
    (<):
      - sed '6031s/$add_dir//' -i ltmain.sh
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"

public:
  bst:
    split-rules:
      gcc-libs:
      - '%{libdir}/libasan.so*'
      - '%{libdir}/libatomic.so*'
      - '%{libdir}/libgcc_s.so*'
      - '%{libdir}/libgfortran.so*'
      - '%{libdir}/libgomp.so*'
      - '%{libdir}/libhwasan.so*'
      - '%{libdir}/libitm.so*'
      - '%{libdir}/liblsan.so*'
      - '%{libdir}/libobjc.so*'
      - '%{libdir}/libquadmath.so*'
      - '%{libdir}/libstdc++.so*'
      - '%{libdir}/libtsan.so*'
      - '%{libdir}/libubsan.so*'
      - '%{debugdir}%{libdir}/libasan.so*'
      - '%{debugdir}%{libdir}/libatomic.so*'
      - '%{debugdir}%{libdir}/libgcc_s.so*'
      - '%{debugdir}%{libdir}/libgfortran.so*'
      - '%{debugdir}%{libdir}/libgomp.so*'
      - '%{debugdir}%{libdir}/libhwasan.so*'
      - '%{debugdir}%{libdir}/libitm.so*'
      - '%{debugdir}%{libdir}/liblsan.so*'
      - '%{debugdir}%{libdir}/libobjc.so*'
      - '%{debugdir}%{libdir}/libquadmath.so*'
      - '%{debugdir}%{libdir}/libstdc++.so*'
      - '%{debugdir}%{libdir}/libtsan.so*'
      - '%{debugdir}%{libdir}/libubsan.so*'