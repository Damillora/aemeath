kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/glib.bst
- components/desktop-libs/pipewire.bst
- components/sys-libs/systemd-libs.bst
- components/dev-lang/lua.bst

variables:
  meson-local: >-
    -Dsystem-lua=true

sources:
- kind: git_repo
  url: freedesktop:pipewire/wireplumber.git
  track: "*.*"
  ref: 0.5.18-0-g81606cbb32d29df20147d1b68b662c1082654d81
