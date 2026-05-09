kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/gtk-doc.bst
- components/dev-lang/vala.bst
- components/dev-tools/check.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/libxml2.bst
- components/sys-libs/sqlite.bst

sources:
- kind: git_repo
  url: gitlab:accounts-sso/libaccounts-glib.git
  track: VERSION_*
  ref: VERSION_1.27-0-g26c54322304e9df598b2ba67427433a2e68b823e
