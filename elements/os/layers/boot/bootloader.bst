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

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/boot bootctl --no-variables install
  - rm /etc/machine-id
  - mkdir -p "%{install-root}/boot/EFI"
  - cp -rT /boot/EFI "%{install-root}/boot/EFI"
  - |
    mkdir -p "%{install-root}/boot/loader"
    cat <<EOF >%{install-root}/boot/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF
