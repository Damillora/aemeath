kind: autotools

(@):
- elements/sources/coreutils.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/acl.bst

#config:
#  install-commands:
#    (>):
#    - rm "%{install-root}/usr/share/info/dir"