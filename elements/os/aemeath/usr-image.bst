kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- os/aemeath/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- filename: os/aemeath/filesystem.bst
  config:
    location: '/sysroot'

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  salt: 5ceca5e1f86ae62403b27e66c5160717f1bb88405a1d1d0853241c27f3764843

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
  - |
    mkdir /fakecap

  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --seed "%{uuidnamespace}" \
       --rootpasswd "root" > '%{install-root}/vars.txt'

  - |
    mkdir -p /sysroot/usr/share/factory
    mv -T /sysroot/etc /sysroot/usr/share/factory/etc

    # Remove pam_selinux from config, because for some reason systemd-user still has them.
  - |
    sed -i /pam_selinux/d /sysroot/usr/lib/pam.d/*

  - |
    echo "IMAGE_VERSION=%{aemeath-version}" >>/sysroot/usr/lib/os-release

  - |
    cat >/sysroot/usr/lib/tmpfiles.d/extra-etc.conf<<EOF
    C /etc/bashrc
    C /etc/default
    C /etc/environment
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
    # freedesktop-sdk.bst:integration/ldconfig.bst
    L /etc/ld.so.conf
    # vm/mesa-default.bst
    L /etc/ld.so.conf.d/00_mesa.conf
    # components/sway/sway.bst
    L /etc/sway/config
    EOF

  - |
    mkfs.erofs '%{install-root}/usr_%{aemeath-version}.erofs' /sysroot/usr
  - |
    veritysetup format --salt="%{salt}" "%{install-root}/usr_%{aemeath-version}.erofs" "%{install-root}/usr_%{aemeath-version}.verity" | sed '/^Root hash:[[:space:]]*/{;s///;q;};d' >"%{install-root}/usr-root-hash.txt"

  - |
    usr_part_uuid="$(cat "%{install-root}/usr-root-hash.txt" | sed -E 's/^([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12}).*/\1\2\3\4\5/')"
    mv "%{install-root}/usr_%{aemeath-version}.erofs" "%{install-root}/usr_%{aemeath-version}_${usr_part_uuid}.erofs"
    ln -s "usr_%{aemeath-version}_${usr_part_uuid}.erofs" '%{install-root}/usr.erofs'

  - |
    usr_verity_part_uuid="$(cat "%{install-root}/usr-root-hash.txt" | sed -E 's/.*([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12})$/\1\2\3\4\5/')"
    mv "%{install-root}/usr_%{aemeath-version}.verity" "%{install-root}/usr_%{aemeath-version}_${usr_verity_part_uuid}.verity"
    ln -s "usr_%{aemeath-version}_${usr_verity_part_uuid}.verity" '%{install-root}/usr.verity'
