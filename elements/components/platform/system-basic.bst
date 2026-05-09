kind: stack

depends:
- components/platform/minimal.bst
# System data
- components/sys-data/iana-etc.bst
- components/sys-data/locale-base.bst
- components/sys-data/man-pages.bst
- components/sys-data/os-release.bst
- components/sys-data/linux-firmware.bst
- components/sys-data/tzdata.bst
# Configuration
- components/sys-config/bash-config.bst
- components/sys-config/sudoers-config.bst
- components/sys-config/linux-pam-config.bst
- components/sys-config/hosts.bst
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
# TPM Support
- components/security-tools/tpm2-tss.bst
- components/security-tools/tpm2-tools.bst
# Filesystems
- components/filesystem-util/btrfs-progs.bst
- components/filesystem-util/lvm2.bst
# Dev Utilities
- components/dev-tools/git.bst
# Services
- components/sys-services/systemd.bst
- components/sys-services/linux-pam.bst
- components/sys-services/shadow.bst
- components/sys-services/dbus.bst
- components/sys-services/dbus-broker.bst
- components/util-sys/iproute2.bst
- components/util-sys/man-db.bst
# Other components
- components/util-shells/bash-completion.bst
  # Remaining from Aemeath OS
  # - components/wireless-regdb-bin.bst
  # - components/usbutils.bst