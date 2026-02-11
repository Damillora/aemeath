kind: script

build-depends:
- os/aemeath/initramfs/deps.bst
- os/aemeath/initramfs/initial-scripts.bst
# Linux kernel
- freedesktop-sdk.bst:components/linux.bst
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
           --no-machineid --kernel-image /boot/vmlinuz \
           --kver $(ls -1 /lib/modules | head -n1) \
           --install 'fsck.btrfs' \
           --install 'mkfs.btrfs' \
           --add-drivers erofs \
           --add-drivers btrfs \
           --add-drivers amdgpu \
           --add-drivers virtio-gpu \
           --add-drivers i915 \
           --libdirs %{libdir} \
           --libdirs %{indep-libdir} \
           --add systemd-repart \
           --add systemd-veritysetup \
           --add crypt \
           --add tpm2-tss

  - mkdir -p "%{install-root}/boot"
  - cp /boot/vmlinuz "%{install-root}/boot/"
  - |
    version="$(ls -1 /lib/modules | head -n1)"
    cp /boot/initramfs-${version}.img "%{install-root}/boot/initramfs.img"

  - mkdir -p "%{install-root}/boot/EFI"
  - cp -rT /boot/EFI "%{install-root}/boot/EFI"
  - mkdir -p "%{install-root}/boot/loader"
  - |
    cat <<EOF >%{install-root}/boot/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF
