kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/util-sys/which.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: --without-cython

public:
  cpe:
    vendor: 'libimobiledevice'
    product: 'libplist'

sources:
- kind: git_repo
  url: github:libimobiledevice/libplist.git
  track: "*.*"
  ref: 2.8.0-0-gfe3dc34dc3484006e12b403f7ceb06f0ad40b6f4
