kind: manual

(@):
- elements/sources/giflib.yml

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/xmlto.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  config: >-
    PREFIX="%{prefix}"
    LIBDIR="%{libdir}"
    BINDIR="%{bindir}"
    INCDIR="%{includedir}"
    MANDIR="%{mandir}"

config:
  build-commands:
  - |
    make %{config}

  install-commands:
  - |
    make install %{config} DESTDIR="%{install-root}"

  - |
    rm "%{install-root}%{libdir}/libgif.a"
