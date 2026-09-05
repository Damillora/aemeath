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
  ref: 0.5.17-0-g11e501181fb87dc8e72e55156d672109fbad2434
