kind: script

build-depends:
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- filename: os/aemeath/boot.bst
  config:
    location: /boot
- public-stacks/runtime-minimal.bst

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    set -x
    for format in erofs verity; do
      image_name="$(readlink "/usr-image/usr.${format}")"
      cp "/usr-image/${image_name}" "%{install-root}/${image_name}"
      xz ${XZFLAGS} "%{install-root}/${image_name}"
    done

  - |
    set -x
    usr_img="$(readlink /usr-image/usr.erofs)"
    sdk_version="${usr_img##usr_}"
    sdk_version="${sdk_version%.erofs}"
    sdk_version="${sdk_version%_*}"
    cp "/signed-boot/boot/EFI/Linux/freedesktopsdk_${sdk_version}.efi" '%{install-root}/'
    xz ${XZFLAGS} "%{install-root}/freedesktopsdk_${sdk_version}.efi"
