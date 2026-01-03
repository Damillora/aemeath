kind: make

sources:
- kind: git_repo
  url: https://git.openldap.org/openldap/openldap.git
  track: LMDB_*

  ref: 3a29a24777c82a0165de813ae696a5068b5add30
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- aemeath/minimal.bst

variables:
  make-args: >-
    PREFIX="%{prefix}" -C libraries/liblmdb

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libcanberra-gtk3.so'
        - '%{libdir}/libcanberra.so'
