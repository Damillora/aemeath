kind: autotools

(@):
- elements/sources/gawk.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst

config:
  configure-commands:
      (<):
        - sed -i 's/extras//' Makefile.in
  #install-commands:
  #  (>):
  #  - rm "%{install-root}/usr/share/info/dir"