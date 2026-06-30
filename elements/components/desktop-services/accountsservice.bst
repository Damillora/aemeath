kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/vala.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/glib.bst
- components/sys-libs/libdbus.bst
- components/desktop-services/polkit.bst

variables:
  local_flags: -Wno-error=implicit-function-declaration

sources:
- kind: git_repo
  url: freedesktop:accountsservice/accountsservice.git
  track: refs/tags/*
  ref: 26.26.9-0-g2205cc63b4a6841df780fe449f62d3f7b0fd19b7
