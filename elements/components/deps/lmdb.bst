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
  ref: LMDB_1.0.0-branch-0-g340f04593e3a05db615b3444fac9f3572ed75e3f
