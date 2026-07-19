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
  ref: 26.27.3-0-g4e254d9624cc48224c9920b9509df0b144f7be0c
