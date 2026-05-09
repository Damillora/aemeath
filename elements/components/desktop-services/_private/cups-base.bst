kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-services/dbus.bst
- components/sys-services/systemd.bst
- components/util-archive/gzip.bst
- components/sys-libs/openssl.bst
#- components/avahi-libs.bst

variables:
  make-install-args: DSTROOT="%{install-root}" install
  conf-local: >-
    --enable-debug
    --with-components=all
    --with-dbusdir=/etc/dbus-1
    --with-tls=openssl
    --with-cups-group=lp
    --with-pkgconfpath="%{libdir}/pkgconfig"
    --with-system-groups="root wheel"
    --with-rundir=/run/cups
    localedir=/usr/share/locale
    DSOFLAGS="$CFLAGS $LDFLAGS"

config:
  install-commands:
    (>):
    - |
      tmpfilesdir="$(pkg-config --variable tmpfilesdir systemd)"
      install -Dm644 tmpfiles.conf "%{install-root}${tmpfilesdir}/cups.conf"

    - |
      sysusersdir="$(pkg-config --variable sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/cups.conf"

public:
  bst:
    split-rules:
      cups-libs:
      - '%{datadir}/locale'
      - '%{datadir}/locale/**'
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{bindir}/cups-config'
      - '%{bindir}/lpr'
      - "%{libdir}/pkgconfig/cups.pc"
      - '%{libdir}/lib*.so'
      - '%{libdir}/lib*.so.*'
      - '%{debugdir}%{bindir}/lpr.debug'
      - '%{debugdir}%{libdir}/lib*.so.*'
  cpe:
    product: cups

sources:
- kind: git_repo
  url: github:OpenPrinting/cups.git
  track: v*
  exclude:
  - "*a*"
  - "*b*"
  - "*rc*"
  - "*op*"
  ref: v2.4.19-0-g6ba0487abb05afc93d639f37676add8fd65d3756
- kind: local
  path: files/cups/tmpfiles.conf
- kind: local
  path: files/cups/sysusers.conf
