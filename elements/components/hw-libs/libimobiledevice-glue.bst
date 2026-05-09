kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/util-sys/which.bst


depends:
- components/util-libs/libplist.bst

variables:
  conf-local: >-
    --without-cython
    --disable-openssl

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice-glue.git
  track: "*.*"
  ref: 1.3.2-0-gaef2bf0f5bfe961ad83d224166462d87b1df2b00
