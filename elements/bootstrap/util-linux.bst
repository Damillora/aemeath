kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/util-linux.yml

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
- bootstrap/autoconf.bst
- bootstrap/automake.bst
- bootstrap/libtool.bst

depends:
- bootstrap/glibc.bst

variables:
  conf-local: >-
    --disable-chfn-chsh
    --disable-login
    --disable-nologin
    --disable-su
    --disable-setpriv
    --disable-runuser
    --disable-pylibmount
    --disable-static
    --disable-liblastlog2
    --without-python
    --docdir=/usr/share/doc/util-linux-2.42
