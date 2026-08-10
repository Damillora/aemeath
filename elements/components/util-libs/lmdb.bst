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
  ref: LMDB_1.0.1-0-g6f0a32496a5aadee15a5e5103c479bd3355ae273
