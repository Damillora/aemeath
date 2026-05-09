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
  url: github:gpg/libksba.git
  track: libksba-*
  ref: libksba-1.8.0-0-g476c602e2f35f1ddd769a613fa44681df33d0101
