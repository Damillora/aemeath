kind: stack

depends:
- components/filesystem-util/e2fsprogs.bst
- components/sys-services/systemd.bst
#- components/dosfstools.bst
#- components/mtools.bst
- components/sys-data/tzdata.bst
- components/aemeath-tools/prepare-image.bst
#- components/genimage.bst
#- integration/mtab.bst