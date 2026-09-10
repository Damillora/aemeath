kind: make

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: prefix="%{prefix}" libdir="%{libdir}" -C libraries/liblmdb

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libcanberra-gtk3.so'
        - '%{libdir}/libcanberra.so'

sources:
- kind: git_repo
  url: openldap:openldap/openldap.git
  track: LMDB_*
  ref: LMDB_1.0.2-0-gc279e0477c713076893e8c2b1a6337e421c15867
