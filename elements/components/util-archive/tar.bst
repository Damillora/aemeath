kind: autotools

(@):
- elements/sources/tar.yml

build-depends:
- bootstrap/platforms/minimal.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

environment:
  FORCE_UNSAFE_CONFIGURE: "1"

#config:
#  install-commands:
#    (>):
#    - rm "%{install-root}/usr/share/info/dir"