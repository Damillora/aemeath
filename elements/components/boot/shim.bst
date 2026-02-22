kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- components/boot/boot-keys.bst

variables:
  efi-arch: "x64"
  aemeath-keys-uuid: 4191ff64-84a5-48fd-a262-58b23c00751d

  notparallel: true

  make-args: >-
    DEFAULT_LOADER='\\EFI\\systemd\\systemd-boot%{efi-arch}.efi'
    EFIDIR=aemeath
    ESPROOTDIR=boot/
    VENDOR_DB_FILE=VENDOR.esl

config:
  configure-commands:
  - cp -ra /boot-keys .
  - |
    openssl x509 -inform PEM -outform DER -in /boot-keys/VENDOR.crt -out VENDOR.cer
  - |
    sbsiglist --owner '%{aemeath-keys-uuid}' --type x509 --output VENDOR.esl VENDOR.cer

sources:
- kind: git_repo
  url: github:rhboot/shim.git
  track: "*.*"
  exclude:
  - "*rc*"
  - "16.0"
  ref: 16.1-0-gafc49558b34548644c1cd0ad1b6526a9470182ed
- kind: git_repo
  url: github:rhboot/gnu-efi.git
  directory: gnu-efi
  # branch shim-16.1
  ref: shim-16.0-pr660-1-gdc7fd96f23d6b582416f672844362d776d175cf4
