kind: stack

depends:
- components/platform/minimal.bst
- components/sys-data/iana-etc.bst
- components/sys-data/locale-base.bst
- components/sys-data/man-pages.bst
- components/sys-config/sudoers-config.bst
# Archive formats
- components/util-archive/bzip2.bst
- components/util-archive/gzip.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
# Utilities
- components/util-sys/grep.bst
- components/util-sys/sed.bst
- components/util-sys/less.bst
- components/util-sys/diffutils.bst
- components/util-sys/findutils.bst
- components/util-sys/psmisc.bst
- components/util-sys/less.bst
- components/util-sys/procps-ng.bst
- components/util-text/nano.bst
# Dev Utilities
- components/dev-tools/git.bst
# Services
- components/sys-services/systemd.bst
- components/sys-services/linux-pam.bst
- components/sys-services/shadow.bst
- components/sys-services/dbus.bst
#- components/sys-services/dbus-broker.bst
#- components/util-sys/kmod.bst
#- components/net-tools/iproute2.bst
#- components/util-sys/kbd.bst
#- components/util-sys/man-db.bst
- components/sys-data/os-release.bst

  # Remaining from Aemeath OS
  # - freedesktop-sdk.bst:components/bash-config.bst
  # - freedesktop-sdk.bst:components/bash-completion.bst
  # - freedesktop-sdk.bst:components/linux-firmware.bst
  # - freedesktop-sdk.bst:components/wireless-regdb-bin.bst
  # - freedesktop-sdk.bst:components/dracut.bst
  # - freedesktop-sdk.bst:components/usbutils.bst
  # - freedesktop-sdk.bst:components/hosts.bst
  # - freedesktop-sdk.bst:components/tpm2-tss.bst
  # - freedesktop-sdk.bst:components/tpm2-tools.bst
  # - freedesktop-sdk.bst:components/lvm2.bst