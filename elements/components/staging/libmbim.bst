kind: meson
sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libmbim.git
  track: '*.*'
  ref: e10df4b6b3edfe6a46d93f7f5f5cab31c29a7091
build-depends:
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/help2man.bst
depends:
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgudev.bst
- aemeath/minimal.bst
