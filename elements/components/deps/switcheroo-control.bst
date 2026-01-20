kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst
- components/deps/python3-dbusmock.bst
- components/deps/umockdev.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:extensions/mesa/libdrm.bst

variables:
  meson-local: >-
    -Dgtk_doc=false
    -Dtests=false

environment:
  PKG_CONFIG_PATH: '%{libdir}/GL/default/lib/pkgconfig'

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 3.0-0-g2adfa2dff85b9886ce0fddca6863fe9f2eaf54a0
