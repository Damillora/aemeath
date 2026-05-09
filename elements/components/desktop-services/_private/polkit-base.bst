kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-perl/xml-parser.bst
- components/dev-tools/gtk-doc.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/strace.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/duktape.bst
- components/sys-services/linux-pam.bst
- components/sys-libs/systemd-libs.bst

variables:
  meson-local: >-
    -Dsession_tracking=logind
  local_flags: -std=gnu++17

public:
  cpe:
    product: polkit
  bst:
    split-rules:
      polkit-gobject:
      - '%{includedir}/polkit-1/polkit'
      - '%{includedir}/polkit-1/polkit/**'
      - '%{datadir}/gettext'
      - '%{datadir}/gettext/**'
      - '%{libdir}/libpolkit-gobject-1.so*'
      - '%{libdir}/pkgconfig/polkit-gobject-1.pc'
      - '%{libdir}/girepository-1.0/Polkit-1.0.typelib'
      - '%{datadir}/gir-1.0/Polkit-1.0.gir'

sources:
- kind: git_repo
  url: github:polkit-org/polkit.git
  track: '[0-9]*'
  ref: 127-0-g9e4894c969eecf26a3ba762f4f7a268aa0fb3e51
  version-guess-pattern: '\d+'
