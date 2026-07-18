kind: manual

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

sources:
- kind: tar
  url: sourceforge:giflib/files/giflib-%{source-track_giflib}.tar.gz
  ref: b65b66b99f0424b93525f987386f22fc5efb9da2bfc92ad4a532249aaffbab0e
