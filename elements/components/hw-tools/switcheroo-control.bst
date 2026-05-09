kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/sys-services/systemd.bst
- components/dev-python3/dbusmock.bst
- components/hw-tools/umockdev.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/libgudev.bst
- components/graphics-libs/libdrm.bst
- components/dev-python3/pygobject.bst

variables:
  meson-local: >-
    -Dgtk_doc=false
    -Dtests=false

sources:
- kind: git_repo
  url: freedesktop:hadess/switcheroo-control.git
  track: master
  ref: 3.0-2-g78f973615284c4447c60a8ff6fbc70bd44c19f4f
