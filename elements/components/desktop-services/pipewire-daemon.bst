kind: filter

build-depends:
- components/desktop-services/_private/pipewire-base.bst

runtime-depends:
- components/net-services/avahi.bst
- components/net-libs/avahi-libs.bst
- components/desktop-libs/pipewire.bst
- components/hw-libs/libusb.bst
- components/net-services/bluez.bst
- components/net-libs/bluez-libs.bst
- components/media-libs/libmysofa.bst
- components/media-libs/sbc.bst
- components/graphics-libs/libdrm.bst
- components/desktop-services/wireplumber.bst

config:
  include:
  - daemon
  include-orphans: False

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pw-config'
