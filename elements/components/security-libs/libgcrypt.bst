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
  ref: libgcrypt-1.12.4-0-g9a53b01742be48c50c3f4340b8e839010bc55d92
