kind: script

build-depends:
- os/aemeath/efi/deps.bst
- os/aemeath/efi/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6

  efi-arch: "x64"

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
  - mkdir -p /fakecap
  - mkdir -p /tmp
  - mkdir -p /var/tmp
  - mkdir -p /boot

  - |
    prepare-image.sh --sysroot / --rootpasswd root \
                     --seed "%{uuidnamespace}" >/tmp/vars

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/boot bootctl --no-variables install
  - rm /etc/machine-id

  - |
    echo '%{libdir}' >/etc/ld.so.conf

  - |
    dracut -v --xz --reproducible --fstab \
           --uefi \
           --no-machineid --kernel-image /boot/vmlinuz \
           --kver $(ls -1 /lib/modules | head -n1) \
           --kernel-cmdline "rw mount.usrflags=ro lockdown=confidentiality systemd.firstboot=no" \
           --install 'fsck.btrfs' \
           --install 'mkfs.btrfs' \
           --add-drivers erofs \
           --add-drivers btrfs \
           --libdirs %{libdir} \
           --libdirs %{indep-libdir} \
           --add systemd-repart \
           --add systemd-veritysetup \
           --add crypt \
           --add tpm2-tss

  - mkdir -p '%{install-root}/boot/loader/keys/auto'

  - cp -r '%{datadir}/efitools/efi'/{PK,KEK,DB}.auth '%{install-root}/boot/loader/keys/auto'

  - |
    cat <<EOF >"%{install-root}/boot/loader/loader.conf"
    timeout 3
    editor yes
    console-mode keep
    EOF

  - mkdir -p "%{install-root}/usr/lib/modules"
  - cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"

  - mkdir -p "%{install-root}/boot/EFI"
  - cp -rT /boot/EFI "%{install-root}/boot/EFI"
  - mkdir -p "%{install-root}/boot/loader"
