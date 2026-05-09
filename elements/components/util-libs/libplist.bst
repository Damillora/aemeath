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
  ref: 2.7.0-0-gcf5897a71ea412ea2aeb1e2f6b5ea74d4fabfd8c
