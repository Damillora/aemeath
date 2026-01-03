kind: meson

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/ModemManager.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: f2b9ab1ad78d322f32134a444b5b54c6e8160e19

build-depends:
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- aemeath/minimal.bst
- components/staging/libmbim.bst
- components/staging/libqmi.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst

variables:
  conf-local: >-
    -Dudevdir=/usr/lib/udev
