kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/security-tools/gnupg.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/texinfo.bst

depends:
- components/security-libs/libgpg-error.bst
- components/security-libs/libassuan.bst

variables:
  conf-local: >-
    --enable-maintainer-mode
    --disable-glibtest
    --disable-gpgconf-test
    --disable-gpg-test
    --disable-gpgsm-test
    --disable-g13-test

config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"

sources:
- kind: git_repo
  url: github:gpg/gpgme.git
  track: gpgme-*
  exclude:
  - "*-base"
  ref: gpgme-2.1.0-0-g5bc31cad011192ef5d06304a28f3b8bf1382081c
