kind: script

build-depends:
- components/aemeath-tools/deploy-tools.bst
- components/aemeath-tools/boot-tools.bst
- os/layers/initramfs/deps.bst
- os/layers/initramfs/initial-scripts.bst

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
  - |
    echo '%{libdir}' >/etc/ld.so.conf
  - |
    dracut -v --xz --reproducible --fstab \
           --no-machineid \
           --kver $(ls -1 /lib/modules | head -n1) \
           --install 'fsck.btrfs' \
           --install 'mkfs.btrfs' \
           --add-drivers erofs \
           --add-drivers btrfs \
           --add-drivers amdgpu \
           --add-drivers virtio-gpu \
           --add-drivers i915 \
           --libdirs %{libdir} \
           --add systemd-repart \
           --add systemd-veritysetup \
           --add tpm2-tss

  - mkdir -p "%{install-root}/boot"
  - |
    version="$(ls -1 /lib/modules | head -n1)"
    cp /boot/initramfs-${version}.img "%{install-root}/boot/initramfs.img"
