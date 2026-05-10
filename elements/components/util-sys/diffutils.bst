kind: autotools

(@):
- elements/sources/diffutils.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
#config:
#  install-commands:
#    (>):
#    - rm "%{install-root}/usr/share/info/dir"