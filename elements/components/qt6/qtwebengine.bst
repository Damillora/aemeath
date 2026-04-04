kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/gperf.bst
- components/deps/nodejs-bin.bst
- components/deps/python3-html5lib.bst
- components/qt6/qttools.bst
- components/qt6/qtwebsockets.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libdbus.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libglvnd.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/nspr.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xcomposite.bst
- freedesktop-sdk.bst:components/xorg-lib-xdamage.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:components/xorg-lib-xfixes.bst
- freedesktop-sdk.bst:components/xorg-lib-xkbfile.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:extensions/mesa/mesa.bst
- components/deps/snappy.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtpositioning.bst
- components/qt6/qtwebchannel.bst

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
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebengine-everywhere-src-%{qt6-version}.tar.xz'
  ref: 63b921c8b2dd59152ced9a796676010166df044588ee00ef9429dc2fd2146736
