kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst

depends:
- components/util-libs/glib.bst

config:
  install-commands:
    (>):
    - rm -r "%{install-root}%{libexecdir}/installed-tests"
    - rm -r "%{install-root}%{datadir}/installed-tests"

variables:
  meson-local: >-
    -Dgtk_doc=disabled

sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: '*.*.*'
  ref: 1.10.8-0-g8273a7d2539c115c0eb1bcc9e8cd9d26fcde204a
