kind: stack

depends:
  - freedesktop-sdk.bst:components/linux.bst
  - freedesktop-sdk.bst:components/wireless-regdb-bin.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/dbus.bst
  - freedesktop-sdk.bst:components/dracut.bst
  - freedesktop-sdk.bst:components/os-release.bst
  - freedesktop-sdk.bst:components/shadow.bst
  - freedesktop-sdk.bst:components/tzdata.bst
  - freedesktop-sdk.bst:components/iproute2.bst
  - freedesktop-sdk.bst:vm/base-filesystem.bst
  - freedesktop-sdk.bst:vm/config/journald.bst
  - freedesktop-sdk.bst:vm/config/networkd.bst
  - freedesktop-sdk.bst:vm/config/resolved.bst
  - freedesktop-sdk.bst:vm/config/useradd-default.bst
  - freedesktop-sdk.bst:vm/config/systemd-homed-firstboot.bst
  - freedesktop-sdk.bst:components/usbutils.bst
  - freedesktop-sdk.bst:components/hosts.bst
  - freedesktop-sdk.bst:components/bash-config.bst
  - freedesktop-sdk.bst:components/bash-completion.bst
  - freedesktop-sdk.bst:components/linux-firmware.bst
  - freedesktop-sdk.bst:components/e2fsprogs.bst
  - freedesktop-sdk.bst:components/xfsprogs.bst
  - components/bootc.bst
  - components/bootc-config.bst
  - oci/layers/platform-stack.bst

public:
  bst:
    integration-commands:
      # Required for bootc to create the image
      - mkdir /boot
      - mkdir /sysroot
      - mkdir /sysroot/ostree
      # This needs to be a relative symlink
      # for some reason
      - ln -s sysroot/ostree ostree

      - rm --verbose --recursive --force /root
      # These also get created by 10-booc.conf tmpfiles
      # but we need them to exist for the OCI image to
      # be usable as a container as well
      - mkdir /var/home
      - mkdir /var/roothome
      - mkdir /var/opt

      - ln -s /var/home /home
      - ln -s /var/roothome /root
      - ln -s /var/opt /opt

      - touch /etc/machine-id
