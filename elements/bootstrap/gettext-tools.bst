kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/gettext.yml

build-depends:
- bootstrap/filesystem.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
#- bootstrap/diffutils.bst
#- bootstrap/findutils.bst
#- bootstrap/gawk.bst
- bootstrap/grep.bst
#- bootstrap/sed.bst
- bootstrap/bash.bst

depends:
- bootstrap/glibc.bst

variables:
   conf-local: >-
     --disable-shared

config:
  install-commands:
    - |
      cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} %{bindir}/