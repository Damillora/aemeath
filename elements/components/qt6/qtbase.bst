kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libglvnd.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libproxy.bst
- freedesktop-sdk.bst:components/xorg-lib-ice.bst
- freedesktop-sdk.bst:components/xorg-lib-sm.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/mtdev.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/shared-mime-info.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xcb-util-cursor.bst
- freedesktop-sdk.bst:components/xcb-util-image.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/xcb-util-renderutil.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/gtk3.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:extensions/mesa/mesa.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

#Unported dependencies
#double-conversion
#krb5
#libb2
#libice
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
        ln -sr "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

    - |
      cd "%{install-root}%{libdir}/qt6/bin"
      for f in qmake qtpaths androiddeployqt; do
        if [ -f "$f" ] && [ -f "${f}6" ]; then
          ln -sf "${f}6" "$f"
        fi
      done

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtbase-everywhere-src-%{qt6-version}.tar.xz'
  ref: 5a6226f7e23db51fdc3223121eba53f3f5447cf0cc4d6cb82a3a2df7a65d265d

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
