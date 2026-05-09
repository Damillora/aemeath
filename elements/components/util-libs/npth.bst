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
  url: github:gpg/npth.git
  track: npth-*
  ref: npth-1.8-0-g64905e765aad9de6054ef70a97fc30bd992ce999
