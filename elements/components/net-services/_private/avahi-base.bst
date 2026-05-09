kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/util-sys/which.bst
- components/sys-services/dbus.bst
- components/util-libs/glib.bst
- components/sys-services/systemd.bst
- components/util-libs/libdaemon.bst

- components/dev-python3/pygobject.bst
- components/dev-python3/dbus.bst
- components/dev-tools/xmltoman.bst

variables:
  conf-local: >-
    --with-distro=none
    --disable-static
    --disable-manpages
    --disable-libevent
    --disable-qt3
    --disable-qt4
    --disable-qt5
    --disable-gtk
    --disable-gtk3
    --disable-python
    --disable-mono
    --with-dbus-system-address='unix:path=/run/dbus/system_bus_socket'

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{libdir}/sysusers.d" \
                     sysusers/avahi.conf

sources:
- kind: git_repo
  url: github:lathiat/avahi.git
  track: v*.*
  exclude:
  - '*rc*'
  ref: v0.8-0-gf060abee2807c943821d88839c013ce15db17b58
- kind: local
  path: files/avahi/avahi.conf
  directory: sysusers

public:
  bst:
    split-rules:
      libs:
      - "%{includedir}/avahi-client"
      - "%{includedir}/avahi-client/**"
      - "%{includedir}/avahi-common"
      - "%{includedir}/avahi-common/**"
      - "%{libdir}/pkgconfig/avahi-client.pc"
      - "%{libdir}/libavahi-client.so*"
      - "%{libdir}/libavahi-common.so*"
      - "%{debugdir}%{libdir}/libavahi-client.so*.dbg"
      - "%{debugdir}%{libdir}/libavahi-common.so*.dbg"
      ui:
      - "%{bindir}/bssh"
      - "%{bindir}/bvnc"
      - "%{bindir}/bshell"
      - "%{debugdir}%{bindir}/bssh.dbg"
      gobject:
      - "%{includedir}/avahi-gobject"
      - "%{includedir}/avahi-gobject/**"
      - "%{libdir}/pkgconfig/avahi-gobject.pc"
      - "%{libdir}/girepository-1.0"
      - "%{libdir}/girepository-1.0/**"
      - "%{libdir}/libavahi-gobject.so*"
      - "%{datadir}/gir-1.0"
      - "%{datadir}/gir-1.0/**"
      - "%{debugdir}%{libdir}/libavahi-gobject.so*.dbg"
  cpe:
    product: avahi
    ignored:
    - CVE-2021-26720
