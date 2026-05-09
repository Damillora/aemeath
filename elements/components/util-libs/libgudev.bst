kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/vala.bst

depends:
- components/sys-libs/systemd-libs.bst
- components/util-libs/glib.bst

sources:
- kind: git_repo
  url: gnome:libgudev.git
  track: "[0-9]*"
  ref: 238-0-gdf7c9c9940160307aaeb31347f4776a46f8736a9
