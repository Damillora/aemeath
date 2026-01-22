kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: '/usr-image'
- filename: os/aemeath/boot.bst
  config:
    location: '/sysroot'
- filename: os/aemeath/boot-live.bst
  config:
    location: '/sysroot'

environment:
  E2FSPROGS_FAKE_TIME: '1767369576'
  ZSTDFLAGS: '--rm -5'
environment-nocache:
- ZSTDFLAGS

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  build-root: /genimage
  usr-uuid: 8484680c-9521-48c6-9c11-b0720656f69e
  usr-verity-uuid: 77ff5f63-e7b6-4633-acf4-1565b864c0e6

config:
  commands:
  - mkdir -p '%{build-root}'

  - |
    efi_part_uuid="$(uuidgen -s --namespace "%{uuidnamespace}" --name partition-efi)"
    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/10-usr.conf$"))).uuid' /usr-image/compressed.repart.json)"
    usr_verity_part_uuid=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/compressed.repart.json)
    disk_uuid="$(uuidgen -s --namespace "%{uuidnamespace}" --name disk)"
    . /usr-image/vars.txt
    cat > "%{build-root}/genimage.cfg" <<EOF
    image efi.img {
        vfat {
            extraargs = "--invariant -F32 -i${id_efi} -n EFI"
        }
        mountpoint = "/boot"
        size = 256M
        temporary = true
    }
    image aemeath-live_%{image-version}.img {
        hdimage {
            align = 1M
            partition-table-type = "gpt"
            disk-uuid = "${disk_uuid}"
        }
        partition efi {
            image = "efi.img"
            partition-type-uuid = "U"
            partition-uuid = "${efi_part_uuid}"
        }
        partition aemeath_usr_%{image-version} {
            partition-type-uuid = "%{usr-uuid}"
            partition-uuid = "${usr_part_uuid}"
            image = "/usr-image/compressed.usr.raw"
        }
        partition aemeath_usr_verity_%{image-version} {
            partition-type-uuid = "%{usr-verity-uuid}"
            partition-uuid = "${usr_verity_part_uuid}"
            image = "/usr-image/compressed.usr-verity.raw"
        }
    }
    config {
      tmppath = "%{build-root}/tmp"
      outputpath = "%{install-root}"
    }
    EOF

  - |
    genimage --config "%{build-root}/genimage.cfg" --rootpath /sysroot
    zstd ${ZSTDFLAGS} "%{install-root}/aemeath-live_%{image-version}.img"
