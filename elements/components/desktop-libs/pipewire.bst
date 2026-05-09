kind: filter

build-depends:
- components/desktop-services/_private/pipewire-base.bst

runtime-depends:
- components/media-libs/gst-plugins-base.bst
- components/media-libs/alsa-lib.bst
- components/sys-libs/libdbus.bst
- components/sys-libs/systemd-libs.bst

config:
  exclude:
  - daemon
  include-orphans: True

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pw-config'
