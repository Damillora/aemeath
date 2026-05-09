kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/libxslt.bst
- components/dev-tools/docbook-xml4.bst
- components/sys-services/systemd.bst

depends:
- components/graphics-libs/pango.bst
- components/graphics-libs/libdrm.bst
- components/gtk-toolkit/gtk3.bst
- components/input-libs/libevdev.bst
- components/desktop-data/plymouth-logo.bst

variables:
  meson-local: >-
    -Dlogo="%{datadir}/pixmaps/aemeath-os.png"

config:
  install-commands:
    (>):
    - |
      install -Dm644 -t "%{install-root}%{datadir}/plymouth" plymouthd.defaults

sources:
- kind: git_repo
  url: freedesktop:plymouth/plymouth.git
  track: '*.*.*'
  ref: 26.134.222-0-gd15928a8e06c217aad0f2e3579df23fec93dc009
- kind: local
  path: files/plymouth/plymouthd.defaults
