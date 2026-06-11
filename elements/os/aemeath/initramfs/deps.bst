kind: stack

depends:
- os/aemeath/deps.bst
#- freedesktop-sdk.bst:components/plymouth.bst
- components/sys-devel/binutils.bst
- components/dev-tools/pkgconf.bst
- components/boot-util/dracut.bst
- components/filesystem-util/erofs-utils.bst
- components/filesystem-util/btrfs-progs.bst
- os/aemeath/repart-config.bst
- os/aemeath/initramfs/kernel-modules.bst
- components/boot-util/efitools.bst
- components/boot-util/shim.bst

