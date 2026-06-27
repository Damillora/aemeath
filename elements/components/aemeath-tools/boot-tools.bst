kind: stack

depends:
- components/boot-util/dracut.bst
- components/boot-util/efitools.bst
- components/boot-util/shim.bst
- components/boot-util/sbsigntools.bst
- components/boot-util/sign-file.bst
- components/boot-util/systemd-ukify.bst
- components/desktop-services/plymouth.bst
- components/filesystem-util/erofs-utils.bst
- components/filesystem-util/btrfs-progs.bst
- components/sys-devel/binutils.bst
- components/sys-services/systemd.bst
- components/util-misc/jq.bst
- components/util-sys/findutils.bst
- components/util-sys/util-linux.bst