kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gtk-doc.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/libgudev.bst
- components/desktop-services/polkit.bst

variables:
  meson-local: >-
    -Dssc-support=disabled

sources:
- kind: git_repo
  url: freedesktop:hadess/iio-sensor-proxy.git
  track: '*.*'
  exclude:
  - '*RC*'
  ref: 3.9-0-g0085ddf8ecb173a1c5fcf2344aa40e561125354f
