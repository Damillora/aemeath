kind: autotools

(@):
- elements/sources/bc.yml

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
