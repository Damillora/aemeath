kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/doxygen.bst
- components/dev-tools/patchelf.bst
- components/hw-libs/libusb.bst
- components/net-services/bluez.bst
- components/net-libs/bluez-libs.bst
- components/net-services/avahi.bst
- components/net-libs/avahi-libs.bst
- components/media-libs/libmysofa.bst
- components/sys-services/dbus.bst
- components/sys-services/systemd.bst
- components/sys-libs/systemd-libs.bst
- components/media-libs/gst-plugins-base.bst
- components/media-libs/libpulse.bst
- components/media-libs/alsa-lib.bst
- components/media-libs/sbc.bst
- components/graphics-libs/libdrm.bst
- components/graphics-data/vulkan-headers.bst

variables:
  meson-local: >-
    -Daudiotestsrc=disabled
    -Djack=disabled
    -Droc=disabled
    -Dvideotestsrc=disabled
    -Dvolume=disabled
    -Dvulkan=disabled
    -Ddocs=enabled
    -Dman=enabled
    -Dbluez5-codec-ldac=disabled
    -Dbluez5-codec-aptx=disabled
    -Dbluez5-codec-aac=disabled
    -Dpipewire-v4l2=disabled
    -Dlibcanberra=disabled
    -Dbluez5-codec-lc3plus=disabled
    -Dlv2=disabled
    -Dlibjack-path=%{libdir}
    -Djack-devel=true
    -Dudevrulesdir=$(pkg-config --variable=udevdir udev)/rules.d
    -Dsession-managers=[]
    -Dlibffado=disabled
    -Dsdl2=disabled
    -Dsnap=disabled
    -Dfftw=disabled
    -Dbluez5-codec-ldac-dec=disabled
    -Dbluez5-plc-spandsp=disabled
    -Donnxruntime=disabled

config:
  install-commands:
    (>):
    - |
      for module in '%{install-root}%{libdir}'/pipewire-0.3/*.so; do
        if ! objdump -x "${module}" | grep -q 'NEEDED *libpipewire-module-'; then
          patchelf --remove-rpath "${module}"
        fi
      done

    - |
      mkdir -p "%{install-root}%{sysconfdir}/alsa/conf.d"
      ln -svf "%{datadir}/alsa/alsa.conf.d/50-pipewire.conf" "%{install-root}%{sysconfdir}/alsa/conf.d/50-pipewire.conf"

public:
  bst:
    split-rules:
      daemon:
      - '%{bindir}/pipewire*'
      - '%{libdir}/libjackserver.so*'
      - '%{libdir}/spa-0.2/alsa'
      - '%{libdir}/spa-0.2/alsa/**'
      - '%{libdir}/spa-0.2/bluez5'
      - '%{libdir}/spa-0.2/bluez5/**'
      - '%{libdir}/spa-0.2/v4l2'
      - '%{libdir}/spa-0.2/v4l2/**'
      - '%{libdir}/spa-0.2/libcamera'
      - '%{libdir}/spa-0.2/libcamera/**'
      - '%{libdir}/spa-0.2/filter-graph/**'
      - '%{libdir}/pipewire-0.3/libpipewire-module-access.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-echo-cancel.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-filter-chain.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-link-factory.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-portal.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-profiler.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-protocol-pulse.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-protocol-simple.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-pulse-tunnel.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-raop-discover.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-snapcast-discover.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-spa-device.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-spa-node-factory.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-spa-node.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-rtp-session.so'
      - '%{libdir}/pipewire-0.3/libpipewire-module-zeroconf-discover.so'
      - '%{libdir}/systemd'
      - '%{libdir}/systemd/**'
      - '%{libdir}/udev'
      - '%{libdir}/udev/**'
      - '%{sysconfdir}/pipewire/media-session.d'
      - '%{sysconfdir}/pipewire/media-session.d/**'
      - '%{sysconfdir}/pipewire/pipewire*'
      - '%{datadir}/alsa/alsa.conf.d/99-pipewire-default.conf'
      - '%{datadir}/alsa-card-profile'
      - '%{datadir}/alsa-card-profile/**'

  cpe:
    product: pipewire

sources:
- kind: git_repo
  url: freedesktop:PipeWire/pipewire.git
  track: '*.[02468].*'
  ref: 1.6.8-0-gb741e0c74f5436f0c925f7741140db0efd32cf4e
