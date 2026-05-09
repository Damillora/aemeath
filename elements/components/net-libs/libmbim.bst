kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst
- components/dev-tools/help2man.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/libgudev.bst
- components/util-shells/bash-completion.bst

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libmbim.git
  track: '*.*'
  ref: 1.34.0-0-g2bca5d22137883f348cb117597746483637491db