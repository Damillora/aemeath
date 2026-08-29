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
  ref: libksba-1.8.1-0-g717381422750fb5a3e971d768ba46cae9a01682d
