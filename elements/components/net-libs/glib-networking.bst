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
  ref: 2.90.0-0-gc7343cea63d4ba64d0c9f5ec1c23f0570dc48b87
