kind: autotools

(@):
- elements/sources/binutils.yml

build-depends:
# Toolchain depends on this
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
- bootstrap/gettext-tools.bst
- bootstrap/texinfo.bst
- bootstrap/tar.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/zstd.bst
- components/sys-devel/flex.bst

variables:
  build-dir: build
  conf-local: >-
    --enable-ld=default
    --enable-plugins
    --enable-shared
    --disable-werror
    --enable-64-bit-bfd
    --enable-new-dtags
    --with-system-zlib
    --enable-default-hash-style=gnu
    %{disable-source}

config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"

public:
  bst:
    overlap-whitelist:
    # This new binutils will conflict with bootstrap binutils
    - "/**"