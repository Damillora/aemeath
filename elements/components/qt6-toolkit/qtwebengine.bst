kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/gperf.bst
- components/dev-lang/nodejs-bin.bst
- components/dev-python3/html5lib.bst
- components/qt6-toolkit/qttools.bst
- components/qt6-toolkit/qtwebsockets.bst
- components/graphics-data/vulkan-headers.bst

depends:
- components/media-libs/alsa-lib.bst
- components/sys-libs/expat.bst
- components/media-libs/ffmpeg.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/util-libs/glib.bst
- components/graphics-libs/harfbuzz.bst
- components/util-libs/icu.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/lcms.bst
- components/sys-libs/libdbus.bst
- components/graphics-libs/mesa.bst
- components/graphics-libs/libpng.bst
- components/media-libs/libpulse.bst
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libwebp.bst
- components/x11-libs/xkbcommon.bst
- components/util-libs/libxml2.bst
- components/util-libs/libxslt.bst
- components/util-libs/nspr.bst
- components/security-libs/nss.bst
- components/graphics-libs/openjpeg.bst
- components/media-libs/opus.bst
- components/desktop-libs/pipewire.bst
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xcomposite.bst
- components/x11-libs/xdamage.bst
- components/x11-libs/xext.bst
- components/x11-libs/xfixes.bst
- components/x11-libs/xkbfile.bst
- components/x11-libs/xrandr.bst
- components/x11-libs/xtst.bst
- components/sys-libs/zlib-ng.bst
- components/graphics-libs/mesa.bst
- components/util-libs/snappy.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtpositioning.bst
- components/qt6-toolkit/qtwebchannel.bst

variables:
  cmake-local: >-
    -DQT_FEATURE_qtwebengine_build=ON
    -DQT_FEATURE_webengine_geolocation=ON
    -DQT_FEATURE_webengine_ozone_x11=ON
    -DQT_FEATURE_webengine_pepper_plugins=ON
    -DQT_FEATURE_webengine_printing_and_pdf=ON
    -DQT_FEATURE_webengine_spellchecker=ON
    -DQT_FEATURE_webengine_webchannel=ON
    -DQT_FEATURE_webengine_webrtc=ON
    -DQT_FEATURE_webengine_webrtc_pipewire=ON
    -DQT_FEATURE_webengine_vulkan=ON
    -DQT_FEATURE_webengine_system_alsa=ON
    -DQT_FEATURE_webengine_system_ffmpeg=OFF
    -DQT_FEATURE_webengine_system_icu=ON
    -DQT_FEATURE_webengine_system_libvpx=OFF
    -DQT_FEATURE_webengine_system_pulseaudio=ON
    -DQT_FEATURE_webengine_system_re2=OFF




sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtwebengine-everywhere-src-%{qt6-track}.tar.xz'
  ref: 679c66ccc6c158fc215e9c58ef160331ecd29974232e345c05161889f8667083
