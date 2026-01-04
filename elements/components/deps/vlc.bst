kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/lua.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/libvorbis.bst
- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libflac.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libsamplerate.bst
- freedesktop-sdk.bst:components/librsvg.bst
- aemeath/minimal.bst

variables:
  conf-local: >-
    BUILDCC="/usr/bin/gcc -std=gnu99"

sources:
- kind: tar
  url: https://download.videolan.org/vlc/3.0.23/vlc-3.0.23.tar.xz
  ref: e891cae6aa3ccda69bf94173d5105cbc55c7a7d9b1d21b9b21666e69eff3e7e0
