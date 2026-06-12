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
  ref: pcre2-10.47-0-gf454e231fe5006dd7ff8f4693fd2b8eb94333429
- kind: git_module
  path: deps/sljit
  url: github:zherczeg/sljit.git
  ref: 45f910b78c6605ebf5b53d3ec7cb00f2312fe417
