kind: stack

depends:
- components/filesystem-util/e2fsprogs.bst
- components/filesystem-util/erofs-utils.bst
- components/aemeath-tools/fakecap.bst
- components/sys-services/systemd.bst
- components/filesystem-util/dosfstools.bst
- components/filesystem-util/mtools.bst
- components/sys-data/tzdata.bst
- components/aemeath-tools/prepare-image.bst
#- components/genimage.bst
#- integration/mtab.bst