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
  ref: libgcrypt-1.12.3-0-g6468840ef7b29244e9fa540ec3c0d3f2fd85a763
