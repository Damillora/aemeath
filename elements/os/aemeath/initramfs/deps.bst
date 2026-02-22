kind: stack

depends:
- os/aemeath/deps.bst
- freedesktop-sdk.bst:components/plymouth.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/binutils.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- os/aemeath/repart-config.bst
- os/aemeath/initramfs/kernel-modules.bst
- components/boot/efitools.bst
- components/boot/shim.bst

