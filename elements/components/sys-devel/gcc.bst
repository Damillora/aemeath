kind: filter

build-depends:
- components/sys-devel/_private/gcc-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gmp.bst
- components/sys-devel/mpfr.bst
- components/sys-devel/mpc.bst
- components/sys-devel/flex.bst
- components/sys-libs/zlib-ng.bst
- components/dev-tools/pkgconf.bst
- components/util-archive/zstd.bst

config:
  exclude:
  - gcc-libs
  include-orphans: true

public:
  bst:
    split-rules:
      static-blocklist:
        - '%{libdir}/libasan.a'
        - '%{libdir}/libatomic.a'
        - '%{libdir}/libgfortran.a'
        - '%{libdir}/libgomp.a'
        - '%{libdir}/libitm.a'
        - '%{libdir}/liblsan.a'
        - '%{libdir}/libquadmath.a'
        - '%{libdir}/libsupc++.a'
        - '%{libdir}/libstdc++exp.a'
        - '%{libdir}/libtsan.a'
        - '%{libdir}/libubsan.a'
        - '%{libdir}/libobjc.a'
        - '%{libdir}/libhwasan.a'