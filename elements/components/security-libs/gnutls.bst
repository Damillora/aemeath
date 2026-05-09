kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gperf.bst
- components/dev-tools/patch.bst
- components/dev-lang/python3.bst
- components/sys-devel/bison.bst
- components/dev-tools/gtk-doc.bst

depends:
- components/security-libs/nettle.bst
- components/security-libs/libtasn1.bst
- components/security-libs/p11-kit.bst
- components/sys-data/ca-certificates.bst
- components/sys-libs/libseccomp.bst
- components/util-archive/brotli.bst
- components/util-libs/libidn2.bst
- components/util-libs/libunistring.bst

variables:
  autogen: |
    ./bootstrap --skip-po --no-git --gnulib-srcdir=%{build-root}/gnulib
    rm -rv devel
  conf-local: >-
    --disable-doc
    --with-default-trust-store-pkcs11="pkcs11:"
    --disable-full-test-suite
    --without-nettle-mini
    --without-included-libtasn1

sources:
- kind: git_repo
  url: gitlab:gnutls/gnutls.git
  track: "*.*.*"
  ref: 3.8.13-0-gb390d80208ed60f1b33ad899475951a8efb40ccd
- kind: git_module
  url: gitlab:gnutls/cligen.git
  path: cligen
  ref: 67883b2490664e3ae0c9b21b919c38ac6ece6705
- kind: git_module
  path: gnulib
  url: gitlab:libidn/gnulib-mirror.git
  ref: 1cc0125a28cba4e8503d853bf99b854fe4dd454c
- kind: git_module
  path: devel/libtasn1
  url: gitlab:gnutls/libtasn1.git
  ref: 6b45b25e94ea538192cc0f97e9ad57171d1c6374
- kind: patch
  path: patches/gnutls/cli-codegen-no-passwd.patch
- kind: patch
  path: patches/gnutls/drop-submodule.patch
