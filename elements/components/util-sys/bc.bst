kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/util-text/ed.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

config:
  install-commands:
    (>):
    - |
      rm "%{install-root}%{infodir}/dir"

sources:
- kind: tar
  url: gnu:bc/bc-%{source-track_bc}.tar.gz
  ref: ae470fec429775653e042015edc928d07c8c3b2fc59765172a330d3d87785f86
