kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/desktop-data/gsettings-desktop-schemas.bst

depends:
- components/net-libs/libproxy.bst
- components/util-libs/glib.bst
- components/security-libs/gnutls.bst
- components/sys-data/ca-certificates.bst

variables:
  meson-local: |
    -Dlibproxy=enabled

sources:
- kind: git_repo
  url: gnome:glib-networking.git
  track: 2.*[02468].*
  exclude:
  - '*alpha*'
  - '*beta*'
  - '*rc*'
  ref: 2.80.1-0-g1417a8dd98c46c208853c5ed95de61c384acea21
