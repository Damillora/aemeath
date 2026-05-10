kind: autotools

(@):
- elements/sources/python3.yml

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/tcl.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/expat.bst
- components/sys-libs/libffi.bst
- components/sys-libs/gdbm.bst
- components/sys-libs/openssl.bst
- components/sys-libs/sqlite.bst

variables:
  conf-local: >-
    --enable-shared
    --with-system-expat
    --enable-optimizations
    --without-static-libpython

config:
  install-commands:
    (>):
    - |
      mkdir -p %{install-root}%{bindir}
      ln -s %{bindir}/python3 %{install-root}%{bindir}/python