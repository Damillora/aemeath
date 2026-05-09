kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: |
    --enable-maintainer-mode \
    --disable-doc


sources:
- kind: git_repo
  url: github:gpg/libgpg-error.git
  track: libgpg-error-*
  ref: libgpg-error-1.61-0-g687c9da501c21a64f7dcedfa73146a4670009cea
