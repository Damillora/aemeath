kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/texinfo.bst

depends:
- components/security-libs/libgpg-error.bst

variables:
  conf-local: |
    --enable-maintainer-mode \
    --disable-doc


sources:
- kind: git_repo
  url: github:gpg/libassuan.git
  track: libassuan-*
  ref: libassuan-3.0.2-0-g0f84595a4bc706d3afb969d59618244c7db3b59f
