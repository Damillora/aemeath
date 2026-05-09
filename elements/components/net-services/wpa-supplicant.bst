kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/libnl.bst
- components/sys-libs/libdbus.bst

variables:
  license-files-extra: README

  config: |
    CONFIG_OWE=y

  make-args: >-
    -C wpa_supplicant
    BINDIR="%{bindir}"
    LIBDIR="%{libdir}"
    DESTDIR="%{install-root}"

config:
  build-commands:
    (<):
    - |
      cp wpa_supplicant/defconfig wpa_supplicant/.config

    - |
      cat <<\EOF >>wpa_supplicant/.config
      %{config}
      EOF

  install-commands:
    (>):
    - |
      cd wpa_supplicant
      systemservices="$(pkg-config --variable system_bus_services_dir dbus-1)"
      systemdir="$(pkg-config --variable datadir dbus-1)/dbus-1/system.d"
      systemdsystemunitdir="$(pkg-config --variable systemdsystemunitdir systemd)"

      install -Dm644 -t "%{install-root}${systemservices}" dbus/fi.w1.wpa_supplicant1.service
      install -Dm644 dbus/dbus-wpa_supplicant.conf "%{install-root}${systemdir}/wpa_supplicant.conf"
      install -Dm644 -t "%{install-root}${systemdsystemunitdir}" systemd/*.service

sources:
- kind: git_repo
  url: w1fi:hostap.git
  track: hostap_*
  ref: hostap_2_11-0-gd945ddd368085f255e68328f2d3b020ceea359af
