kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-python3/docutils.bst
- components/sys-services/systemd.bst
- components/sys-services/dbus.bst
- components/util-libs/libical.bst
- components/util-libs/ell.bst

variables:
  conf-local: >-
    --enable-library
    --enable-external-ell
  make-args: ICAL_LIBS="-lical -licalvcal"

config:
  configure-commands:
    (<):
    - sed -i '4967,4968d' src/adapter.c
  install-commands:
    (>):
    - |
      install -Dm644 -t '%{install-root}%{sysconfdir}/bluetooth/' src/main.conf profiles/network/network.conf profiles/input/input.conf

public:
  bst:
    split-rules:
      bluez-libs:
      - '%{libdir}/libbluetooth*.so*'
      - '%{libdir}/pkgconfig/bluez.pc'
      - '%{includedir}/bluetooth/**'
      - '%{debugdir}%{libdir}/libbluetooth*.so*'
  cpe:
    product: bluez

sources:
- kind: git_repo
  url: kernel:bluetooth/bluez.git
  track: '*.*'
  ref: 5.87-0-g65d11edee469c24dcc8d075b8be9c040cebaaf98
