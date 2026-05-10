kind: autotools

(@):
- elements/sources/gettext.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
- bootstrap/tar.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-data/locale-base.bst

variables:
   conf-local: >-
     --disable-shared

config:
  install-commands:
    - |
      mkdir -p %{install-root}%{bindir}
      cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} %{install-root}%{bindir}/