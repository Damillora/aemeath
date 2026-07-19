kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: gnu
  name: gdbm
  ref:
    suffix: gdbm/gdbm-1.26.tar.gz
    sha256sum: 6a24504a14de4a744103dcb936be976df6fbe88ccff26065e54c1c47946f4a5e
