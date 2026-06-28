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
  ref: 0.5.15-0-gbc4fa8f5e84806f86530c97cb35283eecc3ec081
