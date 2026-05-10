kind: autotools

(@):
- elements/sources/tcl.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/bzip2.bst

variables:
  conf-root: unix
  conf-local: >-
    --disable-rpath

config:
  build-commands:
    (>):
    - |
      sed -e "s|%{build-root}/unix|/usr/lib|" \
          -e "s|%{build-root}|/usr/include|"  \
          -i tclConfig.sh

      sed -e "s|%{build-root}/unix/pkgs/tdbc1.1.12|/usr/lib/tdbc1.1.12|" \
          -e "s|%{build-root}/pkgs/tdbc1.1.12/generic|/usr/include|"     \
          -e "s|%{build-root}/pkgs/tdbc1.1.12/library|/usr/lib/tcl8.6|"  \
          -e "s|%{build-root}/pkgs/tdbc1.1.12|/usr/include|"             \
          -i pkgs/tdbc1.1.12/tdbcConfig.sh

      sed -e "s|%{build-root}/unix/pkgs/itcl4.3.4|/usr/lib/itcl4.3.4|" \
          -e "s|%{build-root}/pkgs/itcl4.3.4/generic|/usr/include|"    \
          -e "s|%{build-root}/pkgs/itcl4.3.4|/usr/include|"            \
          -i pkgs/itcl4.3.4/itclConfig.sh
  install-commands:
    (>):
    - |
      make DESTDIR="%{install-root}" install-private-headers
    - ln -sfv tclsh8.6 %{install-root}%{bindir}/tclsh

environment:
  BUILD_ZLIB: "False"
  BUILD_BZIP2: "0"