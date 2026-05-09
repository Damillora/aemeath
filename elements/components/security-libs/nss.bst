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
      --system-sqlite

  install-commands:
  - |
    cd dist
    for lib in Release/lib/*; do
      case "${lib}" in
        *.a) ;;
        */*.so.TOC) ;;
        */libnssckbi.so) ;;
        *.chk) ;;

        *.so)
          install -Dm644 -t "%{install-root}%{libdir}/" "${lib}"
        ;;
        *)
          echo "What to do with ${lib}?" 1>&2
          exit 1
        ;;
      esac
    done
    install -Dm755 -t "%{install-root}%{bindir}/" Release/bin/*
    install -Dm644 -t "%{install-root}%{includedir}/nss/" public/nss/*.h

  - |
    NSPR_VERSION="$(/usr/bin/nspr-config --version)"
    NSS_VERSION="$(grep NSS_VERSION dist/public/nss/nss.h | sed -e 's/[^"]*"//' -e 's/".*//' -e 's/ .*//')"
    MOD_MAJOR_VERSION="$(echo "${NSS_VERSION}" | cut -d. -f1)"
    MOD_MINOR_VERSION="$(echo "${NSS_VERSION}" | cut -d. -f2)"
    MOD_PATCH_VERSION="$(echo "${NSS_VERSION}" | cut -d. -f3)"

    for f in nss/pkg/pkg-config/*.in; do
      sed -f - "${f}" <<EOF >"$(basename "${f}" .in)"
    s,%,@,g
    s,@prefix@,%{prefix},g
    s,@exec_prefix@,%{exec_prefix},g
    s,@libdir@,%{libdir},g
    s,@includedir@,%{includedir}/nss,g
    s,@NSS_VERSION@,${NSS_VERSION},g
    s,@NSPR_VERSION@,${NSPR_VERSION},g
    s,@MOD_MAJOR_VERSION@,${MOD_MAJOR_VERSION},g
    s,@MOD_MINOR_VERSION@,${MOD_MINOR_VERSION},g
    s,@MOD_PATCH_VERSION@,${MOD_PATCH_VERSION},g
    EOF
    done
    install -m 644 -D -t "%{install-root}/%{libdir}/pkgconfig" nss.pc
    install -m 755 -D -t "%{install-root}/%{bindir}" nss-config

  - |
    ln -sfv ./pkcs11/p11-kit-trust.so %{install-root}%{libdir}/libnssckbi.so