kind: autotools

(@):
- elements/sources/binutils.yml

build-depends:
# Toolchain depends on this
- bootstrap/platforms/autotools.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/texinfo.bst
- bootstrap/tar.bst
- components/sys-data/locale-base.bst

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
    --with-zstd
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