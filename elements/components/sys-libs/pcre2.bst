kind: autotools

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst
- components/sys-libs/readline.bst
- components/util-archive/bzip2.bst

variables:
  conf-local: >-
    --enable-unicode
    --enable-jit
    --enable-pcre2-16
    --enable-pcre2-32
    --enable-pcre2grep-libz
    --enable-pcre2grep-libbz2
    --enable-pcre2test-libreadline
    --disable-static

sources:
- kind: git_repo
  url: github:PCRE2Project/pcre2.git
  track: pcre2-*
  exclude:
  - '*-RC*'
  ref: pcre2-10.49-0-g6f9d7c1373262c541324a16a358785b33ef116cf
- kind: git_module
  path: deps/sljit
  url: github:zherczeg/sljit.git
  ref: de0259c7aaf36aa40cba8014f3fad3edde9307f9
