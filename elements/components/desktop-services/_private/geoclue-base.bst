kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gtk-doc.bst
- components/dev-tools/gobject-introspection.bst
- components/sys-services/systemd.bst
- components/dev-lang/vala.bst
- components/net-services/avahi.bst
- components/util-libs/json-glib.bst
- components/util-libs/glib.bst
- components/net-libs/libsoup.bst
- components/net-libs/avahi-gobject.bst
- components/net-libs/avahi-libs.bst
- components/net-services/modemmanager.bst

variables:
  meson-local: >-
    -D3g-source=true
    -Dcdma-source=true
    -Dmodem-gps-source=true
    -Ddemo-agent=false

config:
  install-commands:
    (>):
    - |
      rm -r "%{install-root}%{libexecdir}/geoclue-2.0/demos"
      rm "%{install-root}%{datadir}/applications/geoclue-where-am-i.desktop"

    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/geoclue.conf"

public:
  cpe:
    product: geoclue
  bst:
    split-rules:
      libgeoclue:
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{libdir}/libgeoclue*.so*'
      - '%{debugdir}%{libdir}'
      - '%{debugdir}%{libdir}/**'
      - '%{libdir}/pkgconfig/libgeoclue*.pc'
      - '%{libdir}/girepository-*'
      - '%{libdir}/girepository-*/**'
      - '%{datadir}/gir-*'
      - '%{datadir}/gir-*/**'
      - '%{datadir}/gtk-doc/html/libgeoclue'
      - '%{datadir}/gtk-doc/html/libgeoclue/**'
      - '%{datadir}/vala'
      - '%{datadir}/vala/**'

sources:
- kind: git_repo
  url: freedesktop:geoclue/geoclue.git
  track: '*.*.*'
  ref: 2.8.1-0-g81ddcb11208a59328a04bf022542504ac80602f5
- kind: local
  path: files/geoclue/sysusers.conf
