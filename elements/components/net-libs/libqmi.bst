kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst
- components/dev-tools/help2man.bst

depends:
- components/util-libs/glib.bst
- components/net-libs/libqrtr-glib.bst
- components/net-libs/libmbim.bst
- components/util-libs/libgudev.bst
- components/util-shells/bash-completion.bst

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libqmi.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: 1.38.0-0-ge3d79ed3f7fdc6a7fa8b374860b1c23a8f172812