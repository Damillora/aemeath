kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- components/aemeath/os-release.bst
- os/aemeath/repart-config-live.bst
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
  repart-seed: 35e34b2b-1fcf-4ab1-ae63-bcda061741c1

config:
  commands:
  - |
    mkdir -p '/build'
    mkdir -p /var/tmp
  - |
    mv /usr-image/compress.usr.raw /sysroot/
    mv /usr-image/compress.usr-verity.raw /sysroot/

  - |
    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/10-usr.conf$"))).uuid' /usr-image/compress.repart.json)"
    usr_verity_part_uuid=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/compress.repart.json)
    cat <<EOF >> /usr/lib/repart.d.live/20-usr.conf
    UUID=${usr_part_uuid}
    EOF
    cat <<EOF >> /usr/lib/repart.d.live/21-usr-verity.conf
    UUID=${usr_verity_part_uuid}
    EOF
  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --sector-size=512 \
        --definitions=/usr/lib/repart.d.live \
        --empty=create \
        --dry-run=no \
        --size=auto \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed=%{repart-seed} \
        --root=/sysroot \
        '/build/live.raw' \
        --json=pretty \
        >'/build/live.repart.json'
  - |
    mv '/build/live.raw' "%{install-root}/aemeath-live_%{image-version}.img"
    zstd ${ZSTDFLAGS} "%{install-root}/aemeath-live_%{image-version}.img"
