kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/x11-libs/pciaccess.bst

variables:
  meson-local: >-
    -Dtegra=enabled
    -Dcairo-tests=disabled
    -Dman-pages=disabled
    -Dvalgrind=disabled
    -Dudev=false
    -Dtests=false

sources:
- kind: git_repo
  url: freedesktop:mesa/drm.git
  track: libdrm-*
  ref: libdrm-2.4.134-0-ge984d448b8b17aab853369e6c203e53719f46de1
