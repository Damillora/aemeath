kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/lua.bst
- freedesktop-sdk.bst:components/libdbus.bst
- freedesktop-sdk.bst:components/libvorbis.bst
- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libsamplerate.bst
- freedesktop-sdk.bst:components/librsvg.bst

variables:
  conf-local: BUILDCC="/usr/bin/gcc -std=gnu99"

sources:
- kind: tar
  url: videolan:vlc/3.0.23/vlc-3.0.23.tar.xz
  ref: e891cae6aa3ccda69bf94173d5105cbc55c7a7d9b1d21b9b21666e69eff3e7e0

public:
  bst:
    split-rules:
      libvlc:
        - "%{libdir}/libvlc.so*"
        - "%{libdir}/libvlccore.so*"
        - "%{libdir}/pkgconfig/libvlc.pc"
        - "%{libdir}/pkgconfig/vlc-plugin.pc"
        - "%{includedir}/vlc/**"
        - "%{libdir}/vlc/vlc-cache-gen"
      vlc-plugins-base:
        - "%{libdir}/vlc/plugins/access/**"
        - "%{libdir}/vlc/plugins/access_output/**"
        - "%{libdir}/vlc/plugins/audio_filter/**"
        - "%{libdir}/vlc/plugins/audio_mixer/**"
        - "%{libdir}/vlc/plugins/audio_output/**"
        - "%{libdir}/vlc/plugins/codec/**"
        - "%{libdir}/vlc/plugins/control/**"
        - "%{libdir}/vlc/plugins/demux/**"
        - "%{libdir}/vlc/plugins/keystore/**"
        - "%{libdir}/vlc/plugins/logger/**"
        - "%{libdir}/vlc/plugins/meta_engine/**"
        - "%{libdir}/vlc/plugins/misc/**"
        - "%{libdir}/vlc/plugins/mux/**"
        - "%{libdir}/vlc/plugins/packetizer/**"
        - "%{libdir}/vlc/plugins/services_discovery/**"
        - "%{libdir}/vlc/plugins/spu/**"
        - "%{libdir}/vlc/plugins/stream_filter/**"
        - "%{libdir}/vlc/plugins/stream_out/**"
        - "%{libdir}/vlc/plugins/text_renderer/**"
        - "%{libdir}/vlc/plugins/video_chroma/**"
        - "%{libdir}/vlc/plugins/video_filter/**"
        - "%{libdir}/vlc/plugins/video_output/**"
        - "%{libdir}/vlc/libvlc_pulse.so*"
        - "%{libdir}/vlc/libvlc_vdpau.so*"
        - "%{libdir}/vlc/libvlc_xcb_events.so*"
