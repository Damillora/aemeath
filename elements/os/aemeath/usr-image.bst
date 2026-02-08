kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- os/aemeath/initial-scripts.bst
- os/aemeath/repart-config.bst
- os/aemeath/repart-config-compress.bst
- filename: os/aemeath/filesystem.bst
  config:
    location: '/sysroot'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 35e34b2b-1fcf-4ab1-ae63-bcda061741c1

environment:
  EROFS_OPTIONS: --all-time -E fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
  - |
    mkdir /fakecap

  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{sysroot-seed}" \
       --rootpasswd "root" > '%{install-root}/vars.txt'

  - |
    mkdir -p /sysroot/usr/share/factory
    mv -T /sysroot/etc /sysroot/usr/share/factory/etc

    # Remove pam_selinux from config, because for some reason systemd-user still has them.
  - |
    sed -i /pam_selinux/d /sysroot/usr/lib/pam.d/*

    # Set unix_chkpwd back to setuid
  - |
    chmod 4755 "/sysroot/usr/bin/unix_chkpwd"

  - |
    echo "IMAGE_VERSION=%{image-version}" >>/sysroot/usr/lib/os-release

  - |
    cat >/sysroot/usr/lib/tmpfiles.d/extra-etc.conf<<EOF
    C /etc/bashrc
    C /etc/default
    C /etc/environment
    C /etc/fonts
    C /etc/hosts
    C /etc/issue
    C /etc/issue.net
    C /etc/libinput
    C /etc/libnl
    C /etc/ld.so.conf
    C /etc/locale.conf
    C /etc/localtime
    C /etc/login.defs
    C /etc/lvm
    C /etc/mke2fs.conf
    C /etc/pki
    C /etc/polkit-1
    C /etc/profile
    C /etc/profile.d
    C /etc/protocols
    C /etc/pulse
    C /etc/rpc
    C /etc/shells
    C /etc/speech-dispatcher
    C /etc/skel
    C /etc/udev
    C /etc/udisks2
    C /etc/xattr.conf
    C /etc/xdg
    C! /etc/audit
    C! /etc/pam.d
    C! /etc/security
    C! /etc/subgid
    C! /etc/subuid
    C! /etc/systemd/coredump.conf
    C! /etc/systemd/homed.conf
    C! /etc/systemd/journal-upload.conf
    C! /etc/systemd/journald.conf
    C! /etc/systemd/logind.conf
    C! /etc/systemd/networkd.conf
    C! /etc/systemd/oomd.conf
    C! /etc/systemd/pstore.conf
    C! /etc/systemd/resolved.conf
    C! /etc/systemd/sleep.conf
    C! /etc/systemd/system.conf
    C! /etc/systemd/timesyncd.conf
    C! /etc/systemd/user.conf
    # freedesktop-sdk.bst:components/modemmanager.bst (just directories)
    C /etc/ModemManager
    # freedesktop-sdk.bst:components/networkmanager.bst (just directories)
    C /etc/NetworkManager
    # freedesktop-sdk.bst:components/upower.bst
    L /etc/UPower/UPower.conf
    # freedesktop-sdk.bst:components/containers-common.bst
    L /etc/containers/policy.json
    L /etc/containers/registries.conf
    L /etc/containers/registries.conf.d/000-shortnames.conf
    L /etc/containers/registries.d/default.yaml
    # freedesktop-sdk.bst:components/bash-config.bst
    L /etc/bashrc
    # freedesktop-sdk.bst:integration/ldconfig.bst
    L /etc/ld.so.conf
    # vm/mesa-default.bst
    L /etc/ld.so.conf.d/00_mesa.conf
    # freedesktop-sdk.bst:extensions/codecs-extra
    L /etc/ld.so.conf.d/00_codecs.conf
    # components/sway/sway.bst
    L /etc/sway/config
    # freedesktop-sdk.bst:components/avahi.bst
    L /etc/dbus-1/system.d/avahi-dbus.conf
    L /etc/avahi/avahi-autoipd.action
    L /etc/avahi/avahi-daemon.conf
    L /etc/avahi/avahi-dnsconfd.action
    L /etc/avahi/hosts
    L /etc/avahi/services/sftp-ssh.service
    L /etc/avahi/services/ssh.service
    # freedesktop-sdk.bst:components/flatpak.bst
    L /etc/dbus-1/system.d/org.freedesktop.Flatpak.SystemHelper.conf
    # freedesktop-sdk.bst:components/modemmanager.bst
    L /etc/dbus-1/system.d/org.freedesktop.ModemManager1.conf
    # freedesktop-sdk.bst:components/sudo.bst
    C /etc/sudo.conf
    C /etc/sudo_logsrvd.conf
    C /etc/sudoers
    C /etc/sudoers.d
    C /etc/sudoers.dist
    # freedesktop-sdk.bst:components/fwupd.bst
    C /etc/fwupd
    # freedesktop-sdk.bst:components/cups-daemon-only.bst
    L /etc/cups/cups-files.conf
    L /etc/cups/cups-files.conf.default
    L /etc/cups/cupsd.conf
    L /etc/cups/cupsd.conf.default
    L /etc/cups/snmp.conf
    L /etc/cups/snmp.conf.default
    # Needed for cups which tries to write PPDs there even driverless
    d /etc/cups/ppd
    L /etc/cups/ssl
    L /etc/paperspecs
    EOF

  - mkdir -p definitions
  - |
    for entry in /usr/lib/repart.d/*.conf; do
      name="$(basename "${entry}")"
      num="${name%%-*}"
      if [ "${num}" -lt 30 ]; then
        cp "${entry}" definitions/
      fi
    done

  - mkdir -p /var/tmp
  - |
    TMPDIR=/var/tmp \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --definitions=/usr/lib/repart.d.compress \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed=%{repart-seed} \
        --root=/sysroot \
        --split=true \
        '%{install-root}/compressed.raw' \
        --json=pretty \
        > '%{install-root}/compressed.repart.json'

  - rm '%{install-root}/compressed.raw'
