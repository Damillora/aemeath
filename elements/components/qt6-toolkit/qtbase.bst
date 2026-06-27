kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/desktop-libs/cups-libs.bst
- components/desktop-tools/shared-mime-info.bst
- components/input-libs/libinput.bst
- components/input-libs/mtdev.bst
- components/graphics-data/vulkan-headers.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/harfbuzz.bst
- components/graphics-libs/libdrm.bst
- components/graphics-libs/libglvnd.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/mesa.bst
- components/gtk-toolkit/gtk3.bst
- components/media-libs/alsa-lib.bst
- components/media-libs/gst-plugins-base.bst
- components/media-libs/libpulse.bst
- components/net-libs/bluez-libs.bst
- components/net-libs/libproxy.bst
- components/sys-libs/libdbus.bst
- components/sys-libs/sqlite.bst
- components/sys-libs/systemd-libs.bst
- components/sys-libs/openssl.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/brotli.bst
- components/util-archive/zstd.bst
- components/util-libs/glib.bst
- components/util-libs/icu.bst
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/ice.bst
- components/x11-libs/sm.bst
- components/x11-libs/xcb-util-cursor.bst
- components/x11-libs/xcb-util-image.bst
- components/x11-libs/xcb-util-keysyms.bst
- components/x11-libs/xcb-util-renderutil.bst
- components/x11-libs/xcb-util-wm.bst
- components/x11-libs/xkbcommon.bst
- components/wayland-libs/wayland.bst

#Unported dependencies
#double-conversion
#krb5
#libb2
#md4c
#qt6-translations
#xdg-utils

variables:
  cmake-local: >-
    -DINSTALL_BINDIR="%{libdir}/qt6/bin"
    -DINSTALL_PUBLICBINDIR="%{bindir}"
    -DINSTALL_LIBDIR=%{libdir}
    -DINSTALL_MKSPECSDIR="%{libdir}/mkspecs"
    -DINSTALL_ARCHDATADIR="%{libdir}/qt6"
    -DINSTALL_DOCDIR="%{docdir}/qt6"
    -DQT_FEATURE_openssl_linked=ON
    -DQT_FEATURE_system_sqlite=ON

config:
  install-commands:
    (>):
    - |
      mkdir -p "%{install-root}%{bindir}"
      while read -r target link; do
        ln -srf "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

    - |
      cd "%{install-root}%{libdir}/qt6/bin"
      for f in qmake qtpaths androiddeployqt wasmdeployqt; do
        if [ -f "$f" ] && [ -f "${f}6" ]; then
          ln -sf "${f}6" "$f"
        fi
      done

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtbase-everywhere-src-%{qt6-track}.tar.xz'
  ref: d9594a31228aa23ad6b531719a29b45f0f3989fe6c136d45767ea179f233c1ac

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/mkspecs'
        - '%{libdir}/mkspecs/**'
        - '%{libdir}/*.prl'
        - '%{libdir}/**/*.prl'
        - '%{bindir}/androiddeployqt6'
        - '%{bindir}/qmake6'
