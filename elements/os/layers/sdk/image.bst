kind: manual

build-depends:
- components/aemeath-tools/deploy-tools.bst
- os/config/repart-config.bst
- os/config/repart-config-compress.bst
- os/layers/base/initial-scripts.bst
- filename: os/layers/sdk/layer.bst
  config:
    location: '/sysroot'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 35e34b2b-1fcf-4ab1-ae63-bcda061741c1
  strip-binaries: ''

environment:
  EROFS_OPTIONS: -z zstd --all-time -E fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '%{build-root}/fakecap'

config:
  build-commands:
  - |
    mkdir -p fakecap
  - mkdir -p tmp
  - |
    TMPDIR=%{build-root}/tmp \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --make-ddi=sysext \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=VENDOR.key \
        --certificate=VENDOR.crt \
        --seed=%{repart-seed} \
        --copy-source=/sysroot \
        '%{install-root}/sdk.raw'

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
