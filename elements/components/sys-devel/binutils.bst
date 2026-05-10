kind: autotools

(@):
- elements/sources/binutils.yml

build-depends:
- bootstrap/buildsystems/autotools.bst
- bootstrap/gettext-tools.bst
- bootstrap/texinfo.bst
- bootstrap/tar.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/zstd.bst

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
  configure-commands:
    (<):
      - sed '6031s/$add_dir//' -i ltmain.sh
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"