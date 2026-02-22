kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true
- freedesktop-sdk.bst:components/findutils.bst
- freedesktop-sdk.bst:components/sign-file.bst

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"

  - |
    version="$(ls -1 /usr/lib/modules | head -n1)"
    cp /boot/vmlinuz "%{install-root}/usr/lib/modules/${version}"

  - |
    openssl x509 -inform PEM -outform DER -in linux-module-cert.crt -out linux-module-cert.cer

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko.zst" -exec unzstd --rm {} ';'

  - |
    find '%{install-root}/usr/lib/modules' -type f -name "*.ko" -exec sign-file sha512 linux-module-cert.key linux-module-cert.cer {} ';' -exec zstd --rm {} ';'

variables:
  strip-binaries: ''

sources:
- kind: local
  path: files/boot-keys/linux-module-cert.key
- kind: local
  path: files/boot-keys/linux-module-cert.crt
