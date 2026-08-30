kind: script

build-depends:
- components/aemeath-tools/deploy-tools.bst
- os/config/repart-config.bst
- os/config/repart-config-compress.bst
- os/layers/base/initial-scripts.bst
- filename: os/layers/base/filesystem.bst
  config:
    location: '/sysroot'
- filename: os/layers/sdk/filesystem.bst
  config:
    location: '/sysroot-sdk'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  install-root: /output

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
       --seed "%{sysroot-seed}" \
       --rootpasswd "root" > '%{install-root}/vars.txt'
  - |
    prepare-image.sh \
       --sysroot /sysroot-sdk \
       --seed "%{sysroot-seed}" \
       --rootpasswd "root" > '%{install-root}/vars.txt'
  - |
    mkdir -p /sysroot-sdk/usr/lib/extension-release.d
    cat << EOF > /sysroot-sdk/usr/lib/extension-release.d/extension-release.aemeath-sdk_%{image-version}
    ID=com.damillora.aemeath
    VERSION_ID="%{image-version}"
    CONFEXT_LEVEL="%{image-version}"
    EOF
  - |
    mkdir -p /output
    make-layer /sysroot/usr /sysroot-sdk/usr /output/usr
