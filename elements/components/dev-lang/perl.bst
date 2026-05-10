kind: make

(@):
- elements/sources/perl.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/zlib-ng.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libxcrypt.bst
- components/util-archive/bzip2.bst

config:
  configure-commands:
  - |
    sh Configure -des \
      -Dprefix="%{prefix}" \
      -Dvendorprefix="%{prefix}" \
      -D useshrplib \
      -D usethreads \
      -D pager="%{bindir}/less -isR" \
      -D man1dir=%{mandir}/man1                \
      -D man3dir=%{mandir}/man3                \

  install-commands:
    (>):
    - |
      rm "%{install-root}%{bindir}/perl"
      ln -sr "%{install-root}%{bindir}"/perl[0-9]* "%{install-root}%{bindir}/perl"


environment:
  BUILD_ZLIB: "False"
  BUILD_BZIP2: "0"