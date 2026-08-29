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
  ref: 0.5.16-0-gec59fa568cf16634c8a4a20e7a085b345a5c76c7
