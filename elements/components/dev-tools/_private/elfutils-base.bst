kind: autotools

(@):
- elements/sources/elfutils.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst

variables:
   conf-local: >-
     --disable-debuginfod
     --enable-libdebuginfod=dummy

config:
  install-commands:
    (>):
      - rm %{install-root}%{libdir}/libelf.a

public:
  bst:
    split-rules:
      libelf:
        - '%{libdir}/libelf*'
        - '%{includedir}/**'