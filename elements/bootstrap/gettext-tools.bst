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
- bootstrap/grep.bst
- bootstrap/bash.bst
- bootstrap/sed.bst
- bootstrap/diffutils.bst
- bootstrap/findutils.bst
- bootstrap/gawk.bst
- bootstrap/tar.bst
- bootstrap/gzip.bst

depends:
- bootstrap/glibc.bst

variables:
   conf-local: >-
     --disable-shared

config:
  install-commands:
    - |
      mkdir -p %{install-root}%{bindir}
      cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} %{install-root}%{bindir}/