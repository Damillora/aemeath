kind: manual

(@):
- elements/sources/nss.yml

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/perl.bst
- components/dev-python3/gyp.bst

depends:
- components/sys-libs/sqlite.bst
- components/util-libs/nspr.bst
- components/security-libs/p11-kit.bst

variables:
  build-args: >-
    --opt
    --system-nspr
    --system-sqlite
    --disable-tests
    --enable-libpkix
    --target=x64

environment:
  MAXJOBS: "%{max-jobs}"

environment-nocache:
- MAXJOBS

public:
  cpe:
    product: network_security_services
    ignored:
    - CVE-2013-0791
    - CVE-2013-1620

config:
  build-commands:
  - |
    cd nss
    ./build.sh \
      --disable-tests \
      --enable-libpkix \
      --opt \
      --system-nspr \
      --system-sqlite \
      --target=x64

  install-commands:
  - |
    cd dist
    install -v -m755 Linux*/lib/*.so  /usr/lib         &&
    install -v -m644 Linux*/lib/*.chk /usr/lib         &&

    install -v -m755 -d               /usr/include/nss &&
    cp -v -RL {public,private}/nss/*  /usr/include/nss &&

    install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin &&

    install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib/pkgconfig

  - |
    ln -sfv ./pkcs11/p11-kit-trust.so %{install-root}%{libdir}/libnssckbi.so
