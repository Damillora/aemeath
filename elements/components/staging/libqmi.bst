kind: meson
sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libqmi.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: e3d79ed3f7fdc6a7fa8b374860b1c23a8f172812
build-depends:
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/help2man.bst
depends:
- freedesktop-sdk.bst:components/glib.bst
- components/staging/libqrtr-glib.bst
- components/staging/libmbim.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
