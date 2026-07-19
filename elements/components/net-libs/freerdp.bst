kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/desktop-services/cups.bst
- components/media-libs/ffmpeg.bst
- components/media-libs/libpulse.bst
- components/hw-libs/libusb.bst
- components/graphics-libs/openjpeg.bst
- components/sys-libs/openssl.bst
- components/sys-libs/systemd-libs.bst
- components/wayland-libs/wayland.bst
- components/security-tools/pkcs11-helper.bst
- components/security-services/krb5.bst

# CLIENT_SDL is depending on webkit2gtk-4.0
# https://github.com/FreeRDP/FreeRDP/blob/87557b1e4ef636e18a7dea58f0cae76fa5dff4fb/client/SDL/aad/CMakeLists.txt#L42
variables:
  cmake-local: >-
    -DRDTK_FORCE_STATIC_BUILD=ON
    -DUWAC_FORCE_STATIC_BUILD=ON
    -DWITH_ADD=ON
    -DWITH_BINARY_VERSIONING=ON
    -DWITH_CHANNELS=ON
    -DWITH_CLIENT_CHANNELS=ON
    -DWITH_CUPS=ON
    -DWITH_DSP_FFMPEG=ON
    -DWITH_FFMPEG=ON
    -DWITH_JPEG=ON
    -DWITH_MANPAGES=ON
    -DWITH_PCSC=ON
    -DWITH_PKCS11=ON
    -DWITH_PULSE=ON
    -DWITH_SERVER_CHANNELS=ON
    -DWITH_SERVER=ON
    -DPKG_CONFIG_RELOCATABLE=OFF
    -DWITH_ALSA=OFF
    -DWITH_CLIENT_SDL=OFF
    -DWITH_FUSE=OFF
    -DWITH_SAMPLE=OFF
    -DWITH_X11=OFF

sources:
- kind: git_repo
  url: github:FreeRDP/FreeRDP.git
  track: '*.*'
  ref: 3.30.0-0-g6b107f0aadbabc47941c5a5b893b88c01792af6d
