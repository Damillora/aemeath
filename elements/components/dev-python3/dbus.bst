kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/dev-lang/python3.bst
- components/sys-libs/libdbus.bst
- components/util-libs/glib.bst

variables:
  meson-local: >-
    -Dtests=false

config:
  install-commands:
    (>):
    - python3 -m compileall -o 0 -o 1 -o 2 "%{install-root}"

sources:
- kind: git_repo
  url: freedesktop:dbus/dbus-python.git
  track: dbus-python-*
  ref: dbus-python-1.4.0-0-gd4c4e537d5afccd7e88b232e09393806955f238a
