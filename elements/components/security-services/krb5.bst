kind: autotools

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

sources:
- kind: tar
  url: kerberos:dist/krb5/%{source-branch_krb5}/krb5-%{source-track_krb5}.tar.gz
  ref: 3243ffbc8ea4d4ac22ddc7dd2a1dc54c57874c40648b60ff97009763554eaf13
- kind: patch_queue
  path: patches/krb5

