kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/perl.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst
- components/sys-services/systemd.bst

depends:
- components/net-libs/libndp.bst
- components/net-libs/curl.bst
- components/sys-libs/systemd-libs.bst
- components/util-libs/util-linux-libs.bst
- components/util-libs/glib.bst
- components/util-libs/jansson.bst
- components/util-libs/newt.bst
- components/net-services/modemmanager.bst
- components/net-libs/libpsl.bst
- components/security-libs/nss.bst
- components/dev-python3/pygobject.bst

runtime-depends:
- components/desktop-services/polkit.bst
- components/net-services/wpa-supplicant.bst

variables:
  meson-local: >-
    -D libaudit=no
    -D selinux=false
    -D nmtui=true
    -D ovs=false
    -D ppp=false
    -D nbft=false
    -D selinux=false
    -D qt=false
    -D session_tracking=systemd
    -D nm_cloud_setup=false
    -D modem_manager=false
    -D systemdsystemgeneratordir="$(pkg-config --variable systemdsystemgeneratordir systemd)"

sources:
- kind: git_repo
  url: freedesktop:NetworkManager/NetworkManager.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: 1.56.1-0-gb829f838fc5d8c93437faa5db44a5396b67893de
- kind: patch_queue
  path: patches/networkmanager