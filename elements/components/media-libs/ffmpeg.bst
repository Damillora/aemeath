kind: make

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/nasm.bst
- components/graphics-data/vulkan-headers.bst
#- components/nv-codec-headers.bst
#- components/amf-headers.bst

depends:
- components/media-libs/dav1d.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/fribidi.bst
- components/graphics-libs/lcms.bst
- components/graphics-libs/libjxl.bst
- components/graphics-libs/librsvg.bst
- components/graphics-libs/libwebp.bst
- components/graphics-libs/openjpeg.bst
- components/graphics-libs/sdl2-compat.bst
- components/graphics-libs/vulkan-icd-loader.bst
- components/media-libs/lame.bst
- components/media-libs/libva.bst
- components/media-libs/mpg123.bst
- components/media-libs/libaom.bst
- components/media-libs/libmysofa.bst
- components/media-libs/libpulse.bst
- components/media-libs/libtheora.bst
- components/media-libs/libvorbis.bst
- components/media-libs/libvpx.bst
- components/media-libs/x264.bst
- components/media-libs/x265.bst
- components/media-libs/opus.bst
- components/media-libs/speex.bst
- components/media-libs/svt-av1.bst
#- components/media-libs/openal.bst
#- components/media-libs/ladspa-sdk.bst
- components/security-libs/gnutls.bst
- components/security-libs/libgcrypt.bst
#- components/v4l-utils.bst
- components/x11-libs/xcb.bst

variables:
  optimize-debug: "false"
  ffmpeg-arch: 'x86_64'

  conf-local: >-
    --prefix="%{prefix}"
    --libdir="%{libdir}"
    --optflags="${CFLAGS}"
    --extra-ldflags="${LDFLAGS}"
    --disable-stripping
    --disable-doc
    --disable-static
    --enable-shared
    --enable-gnutls
    --enable-gcrypt
    --enable-lcms2
    --enable-libaom
    --enable-libdav1d
    --enable-libmp3lame
    --enable-libfontconfig
    --enable-libfreetype
    --enable-libfribidi
    --enable-libjxl
    --enable-libopus
    --enable-libpulse
    --enable-libspeex
    --enable-libtheora
    --enable-libvorbis
    --enable-libvpx
    --enable-librsvg
    --enable-libwebp
    --enable-libxml2
    --enable-libopenjpeg
    --enable-libsvtav1
    --enable-opengl
    --enable-sdl2
    --enable-vulkan
    --enable-zlib
    --enable-libxcb
    --enable-vaapi
    --enable-pthreads
    --enable-libmysofa
    --enable-libx264
    --enable-libx265
    --enable-gpl
    --enable-version3
    --enable-encoders
    --enable-decoders
    --arch="%{ffmpeg-arch}"
#    --enable-ffnvcodec
#    --enable-amf

# ffmpeg is not using autotools, but a configure and Makefile files
config:
  configure-commands:
  - ./configure %{conf-local}

sources:
- kind: git_repo
  url: ffmpeg:ffmpeg.git
  track: n*
  exclude:
  - '*-dev'
  ref: n8.1.2-0-g38b88335f99e76ed89ff3c93f877fdefce736c13

