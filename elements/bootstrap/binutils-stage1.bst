kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/binutils.yml

build-depends:
- binary-seed.bst

variables:
  prefix: "%{bootstrap-prefix}"
  conf-local: >-
    --with-sysroot=%{bootstrap-sysroot}
    --target=%{bootstrap-triplet}
    --disable-nls
    --enable-gprofng=no
    --disable-werror
    --enable-new-dtags
    --enable-default-hash-style=gnu
    %{disable-source}

config:
  install-commands:
    (>):
    - ln -sv lib %{install-root}%{prefix}/lib64
    - rm -rf %{install-root}%{datadir}/info
    - rm -rf %{install-root}%{libdir}/bfd-plugins
