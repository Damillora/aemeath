kind: autotools

(@):
- elements/sources/glibc.yml

build-depends:
# Toolchain depends on this package
- bootstrap/filesystem.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/bison.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/grep.bst
- bootstrap/bash.bst
- bootstrap/sed.bst
- bootstrap/diffutils.bst
- bootstrap/findutils.bst
- bootstrap/gawk.bst
- bootstrap/gzip.bst
- bootstrap/autoconf.bst
- bootstrap/automake.bst
- bootstrap/libtool.bst
- bootstrap/m4.bst
- bootstrap/python3.bst

runtime-depends:
- components/sys-data/linux-api-headers.bst

variables:
  build-dir: build
  conf-local: >-
    --disable-werror
    --disable-nscd
    libc_cv_slibdir=%{libdir}
    --enable-stack-protector=strong
    --enable-kernel=6.0

config:
  configure-commands:
    (<):
    - echo "rootsbindir=%{sbindir}" > configparms
  install-commands:
    (>):
    - |
      touch '%{install-root}%{sysconfdir}/ld.so.conf'

public:
  bst:
    overlap-whitelist:
    # This new glibc will conflict with bootstrap glibc
    - "**"