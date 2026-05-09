kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/perl.bst
- components/dev-tools/gobject-introspection.bst
- components/wayland-libs/wayland-protocols.bst

depends:
- components/desktop-data/hicolor-icon-theme.bst
- components/desktop-services/at-spi2-core.bst
- components/graphics-libs/gdk-pixbuf2.bst
- components/graphics-libs/libepoxy.bst
- components/graphics-libs/pango.bst
- components/x11-libs/xkbcommon.bst
- components/sys-data/iso-codes.bst
- components/wayland-libs/wayland.bst
- components/x11-libs/xcomposite.bst
- components/x11-libs/xcursor.bst
- components/x11-libs/xdamage.bst
- components/x11-libs/xinerama.bst
- components/x11-libs/xi.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/gtk3-*'
        - '%{bindir}/gtk-builder-tool'
        - '%{bindir}/gtk-query-settings'
        - '%{bindir}/gtk-encode-symbolic-svg'
        - '%{libdir}/libgdk-3.so'
        - '%{libdir}/libgtk-3.so'
        - '%{libdir}/libgailutil-3.so'
        - '%{datadir}/icons'
        - '%{datadir}/icons/**'
        - '%{datadir}/gtk-3.0/valgrind'
        - '%{datadir}/gtk-3.0/valgrind/**'
        - '%{datadir}/applications'
        - '%{datadir}/applications/**'

    integration-commands:
    - |
      gtk-query-immodules-3.0 --update-cache

    - |
      gtk-update-icon-cache %{datadir}/icons/hicolor
  cpe:
    product: gtk+

sources:
- kind: git_repo
  url: gnome:gtk.git
  track: 3.24.*
  ref: 3.24.52-0-g6a0b360d473f7c546314738c0c8dd9829eb9d3c2
