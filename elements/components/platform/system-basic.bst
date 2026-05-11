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
#- components/util-sys/procps-ng.bst
# Dev Utilities
- components/dev-tools/git.bst
# Services
- components/sys-services/systemd.bst
- components/sys-services/linux-pam.bst
#- components/sys-services/shadow.bst

  # Remaining from Aemeath OS
  # - freedesktop-sdk.bst:components/bash-config.bst
  # - freedesktop-sdk.bst:components/bash-completion.bst
  # - freedesktop-sdk.bst:components/dbus.bst
  # - freedesktop-sdk.bst:components/linux-firmware.bst
  # - freedesktop-sdk.bst:components/wireless-regdb-bin.bst
  # - freedesktop-sdk.bst:components/dracut.bst
  # - freedesktop-sdk.bst:components/shadow.bst
  # - freedesktop-sdk.bst:components/iproute2.bst
  # - freedesktop-sdk.bst:components/usbutils.bst
  # - freedesktop-sdk.bst:components/hosts.bst
  # - freedesktop-sdk.bst:components/less.bst
  # - freedesktop-sdk.bst:components/audit.bst
  # - freedesktop-sdk.bst:components/nsswitch-config.bst
  # - freedesktop-sdk.bst:components/tpm2-tss.bst
  # - freedesktop-sdk.bst:components/tpm2-tools.bst
  # - freedesktop-sdk.bst:components/lvm2.bst
  # - freedesktop-sdk.bst:vm/base-filesystem.bst
  # - components/deps/dbus-broker.bst
  # - components/aemeath/os-release.bst
