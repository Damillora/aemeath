kind: stack

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - components/kernel/linux.bst # Latest Freedesktop kernel
  - freedesktop-sdk.bst:components/bash-config.bst
  - freedesktop-sdk.bst:components/bash-completion.bst
  - freedesktop-sdk.bst:components/bash-config.bst
  - freedesktop-sdk.bst:components/bash-completion.bst
  - freedesktop-sdk.bst:components/util-linux-full.bst
  - freedesktop-sdk.bst:components/linux-firmware.bst
  - freedesktop-sdk.bst:components/wireless-regdb-bin.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/dbus.bst
  - freedesktop-sdk.bst:components/dracut.bst
  - freedesktop-sdk.bst:components/shadow.bst
  - freedesktop-sdk.bst:components/tzdata.bst
  - freedesktop-sdk.bst:components/iproute2.bst
  - freedesktop-sdk.bst:components/usbutils.bst
  - freedesktop-sdk.bst:components/hosts.bst
  - freedesktop-sdk.bst:components/less.bst
  - freedesktop-sdk.bst:components/audit.bst
  - freedesktop-sdk.bst:components/nsswitch-config.bst
  - freedesktop-sdk.bst:components/tpm2-tss.bst
  - freedesktop-sdk.bst:components/tpm2-tools.bst
  - freedesktop-sdk.bst:components/efitools.bst
  - freedesktop-sdk.bst:components/lvm2.bst
  - freedesktop-sdk.bst:vm/base-filesystem.bst
  - components/aemeath/os-release.bst
