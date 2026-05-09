kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/texinfo.bst

depends:
- components/security-libs/libgpg-error.bst

variables:
  conf-local: >-
    --enable-maintainer-mode
    --disable-doc
    --enable-asm

sources:
- kind: git_repo
  url: github:gpg/libgcrypt.git
  track: libgcrypt-*
  ref: libgcrypt-1.12.2-0-gefc346430901b84f1f580a147191624d7ded0db6
