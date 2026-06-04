kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/binutils.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst
- bootstrap/gcc-stage1.bst
- filename:
  - bootstrap/linux-api-headers.bst
  - bootstrap/glibc.bst
  - bootstrap/zstd.bst
  config:
    location: "%{bootstrap-sysroot}"

runtime-depends:
- bootstrap/glibc.bst
- bootstrap/zstd.bst

variables:
  build-dir: build
  conf-local: >-
    --build=$(../config.guess)
    --host=%{bootstrap-triplet}
    --disable-nls
    --enable-gprofng=no
    --disable-werror
    --enable-new-dtags
    --enable-default-hash-style=gnu
    --with-zstd
    %{disable-source}

config:
  configure-commands:
    (<):
      - sed '6031s/$add_dir//' -i ltmain.sh
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"