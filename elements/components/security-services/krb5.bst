kind: autotools

(@):
- elements/sources/krb5.yml

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/bison.bst
- components/dev-lang/perl.bst

depends:
- components/filesystem-util/e2fsprogs.bst
- components/security-tools/keyutils.bst
- components/sys-libs/openssl.bst

variables:
  conf-root: src
    # krb5 configure script doesnt like --disable-Werror
  conf-global: >-
    --disable-static
  conf-local: >-
    --runstatedir=/run
    --disable-rpath
    --with-system-et
    --with-system-ss
    --with-keyutils

public:
  cpe:
    product: kerberos_5
