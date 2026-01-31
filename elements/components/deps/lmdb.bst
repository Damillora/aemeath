kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

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
  ref: LMDB_0.9.35-0-g69087ced3cb6082f7dcfb4fc2dcaa3b68a7e2e8c
