kind: meson

(@):
- elements/sources/gstreamer.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/mesa.bst
- components/graphics-libs/pango.bst
- components/media-libs/alsa-lib.bst
- components/media-libs/gstreamer.bst
- components/media-libs/libogg.bst
- components/media-libs/libvorbis.bst
- components/sys-data/iso-codes.bst
- components/util-libs/glib.bst
- components/util-libs/libgudev.bst
- components/wayland-libs/wayland-protocols.bst
- components/x11-libs/xv.bst

variables:
  command-subdir: subprojects/gst-plugins-base

  meson-local: >-
    --wrap-mode=nodownload
    -Dintrospection=enabled
    -Dpackage-origin="aemeath"